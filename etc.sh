#!/bin/zsh

function mkcd () {
  mkdir $1 && cd $_
}

function daily_report () {
  today=`date "+%Y/%m/%d"`
  report_path="${HOME}/esa/daily_report/${today}"
  mkdir -p $report_path
  pushd $report_path
  cat <<CONTENTS > text.md
日報 ${today}
===

やったこと
---

考えたこと
---

気分
---

明日やること
---

CONTENTS
  vim text.md
  popd
}