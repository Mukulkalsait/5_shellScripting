#!/usr/bin/env bash

echo "1. hello bash."
echo "2. this is second line"
echo "3. another line"
echo '4. trying ilne inside single cotes'

read -p "give me some amount:" amount

if ((0 < amount && amount < 100)); then
  echo "🍏 Thankyou. You can donate more next time since its not actual money."
elif ((100 <= amount && amount <= 1000)); then
  echo "🔖Thankyou for the generous donations."
else
  echo "🚀 WOW you are preaty generous. Thankyou."
fi
