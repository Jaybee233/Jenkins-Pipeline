#创建一个可以读取文本并且修改后能够提交的Pipeline
node {
   echo "JOB_DISPLAY_URL:$JOB_DISPLAY_URL"
   def tmppath='/Users/jiangxiaoxiong/Documents/GitHub/display-url-api-plugin/a.tmp'
   def filecontent = readFile '/Users/jiangxiaoxiong/Documents/GitHub/display-url-api-plugin/pom.xml'

    def realconent = input(message: 'please check yaml file', parameters: [text(defaultValue: "$filecontent", description: '', name: 'yamlfile')])
    //echo "$realconent"
    writeFile file: "$tmppath", text: "$realconent"
}
