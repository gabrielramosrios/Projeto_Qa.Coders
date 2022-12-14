module  Helper
  def print_screen(file_name, result)
    date = "#{Time.now.strftime("%Y/%B/%D")}"
    hour = "#{Time.now.strftime("%H/%M/%S")}"

    file_patch = "reports/screenshots/test_#{result}"
    screenshots = "#{file_patch}/#{date}/#{hour}/#{file_name}.png" 
    page.save_screenshot(screenshots)
    attach(screenshots, 'image/png')
  end  
end  
  