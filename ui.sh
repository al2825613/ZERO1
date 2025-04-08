#!/bin/bash

# ZERO - واجهة المستخدم للأداة
TOOLS_DIR="tools"

# بيانات وصف الأدوات (اسم => وصف)
declare -A TOOL_DESCRIPTIONS=(
    ["pixload"]="دمج payload خبيث داخل الصور لاستغلال رفع الملفات."
    ["brutegmail"]="Bruteforce لحسابات Gmail."
    ["DarkFly-Tool"]="مجموعة أدوات اختراق متعددة."
    ["fsociety"]="مجموعة أدوات هاكر مشابهة لمسلسل Mr. Robot."
    ["shellphish"]="إنشاء صفحات تصيد phishing."
)

banner() {
    clear
    echo "==========================="
    echo "      ZERO - Tool Hub      "
    echo "==========================="
}

list_tools() {
    echo "\nالأدوات المتوفرة:"
    i=1
    for dir in "$TOOLS_DIR"/*; do
        [ -d "$dir" ] || continue
        tool_name=$(basename "$dir")
        description=${TOOL_DESCRIPTIONS[$tool_name]:-"(بدون وصف)"}
        printf "%2d) %-20s - %s\n" $i "$tool_name" "$description"
        ((i++))
    done
    echo "$i) تشغيل جميع الأدوات"
    ((i++))
    echo "$i) خروج"
}

run_tool() {
    tools=("$TOOLS_DIR"/*)
    index=$1
    if [ "$index" -le "${#tools[@]}" ]; then
        tool_path="${tools[$((index-1))]}"
        echo "\n[+] تشغيل الأداة: $(basename "$tool_path")"
        cd "$tool_path" || exit
        bash *.sh 2>/dev/null || python *.py 2>/dev/null || echo "لا يوجد سكريبت تشغيل معروف."
        cd - > /dev/null
    else
        echo "[!] خيار غير صالح."
    fi
}

run_all_tools() {
    echo "\n[+] تشغيل جميع الأدوات..."
    for dir in "$TOOLS_DIR"/*; do
        [ -d "$dir" ] || continue
        echo "\n--- $(basename "$dir") ---"
        cd "$dir" || continue
        bash *.sh 2>/dev/null || python *.py 2>/dev/null || echo "لا يوجد سكريبت تشغيل معروف في $(basename "$dir")"
        cd - > /dev/null
    done
}

# Main Loop
while true; do
    banner
    list_tools
    echo -ne "\nاختر رقم الأداة لتشغيلها: "
    read -r choice

    total=$(ls -d $TOOLS_DIR/*/ 2>/dev/null | wc -l)
    if [[ "$choice" =~ ^[0-9]+$ && "$choice" -gt 0 && "$choice" -le $total ]]; then
        run_tool "$choice"
        read -p "\nاضغط Enter للعودة..."
    elif [[ "$choice" -eq $((total+1)) ]]; then
        run_all_tools
        read -p "\nاضغط Enter للعودة..."
    elif [[ "$choice" -eq $((total+2)) ]]; then
        echo "خروج..."
        exit 0
    else
        echo "[!] خيار غير صالح."
        sleep 1
    fi
done
