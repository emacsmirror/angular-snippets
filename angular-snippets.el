
(defvar ng-docs
  '(("ng-app" . "Auto-bootstraps an application, with optional module to load.")
    ("ng-bind" . "Replace text content of element with value of given expression.")
    ("ng-bind-html-unsafe" . "Set innerHTML of element to unsanitized value of given expression.")
    ("ng-bind-template" . "Replace text content of element with given template.")
    ("ng-change" . "Eval the given expression when user changes the input. Requires ng-model.")
    ("ng-checked" . "Uses given expression to determine checked-state of checkbox.")
    ("ng-class" . "Sets class names on element based on given expression.")
    ("ng-class-even" . "Like ng-class, but only on even rows. Requires ng-repeat.")
    ("ng-class-odd" . "Like ng-class, but only on odd rows. Requires ng-repeat.")
    ("ng-click" . "Eval the given expression when element is clicked.")
    ("ng-cloak" . "Hides the element contents until compiled by angular.")
    ("ng-controller" . "Assign controller to this element, along with a new scope.")
    ("ng-csp" . "Enables Content Security Policy support. Should be on same element as ng-app.")
    ("ng-dblclick" . "Eval the given expression when element is double clicked.")
    ("ng-disabled" . "Uses given expression to determine disabled-state of element.")
    ("ng-form" . "Nestable alias of the form directive.")
    ("ng-hide" . "Hides the element if the expression is truthy.")
    ("ng-href" . "Avoids bad URLs on links that are clicked before angular compiles them.")
    ("ng-include" . "Fetches, compiles and includes an external HTML fragment.")
    ("ng-init" . "Evals expression before executing template during bootstrap.")
    ("ng-list" . "Text input that converts between comma-separated string and an array of strings.")
    ("ng-model" . "Sets up two-way data binding. Works with input, select and textarea.")
    ("ng-mousedown" . "Eval the given expression on mousedown.")
    ("ng-mouseenter" . "Eval the given expression on mouseenter.")
    ("ng-mouseleave" . "Eval the given expression on mouseleave.")
    ("ng-mousemove" . "Eval the given expression on mousemove.")
    ("ng-mouseover" . "Eval the given expression on mouseover.")
    ("ng-mouseup" . "Eval the given expression on mouseup.")
    ("ng-multiple" . "Uses given expression to determine multiple-state of select element.")
    ("ng-non-bindable" . "Makes angular ignore {{bindings}} inside element.")
    ("ng-options" . "Populates select options from a list or object.")
    ("ng-pluralize" . "Helps change wording based on a number.")
    ("ng-readonly" . "Uses given expression to determine readonly-state of element.")
    ("ng-repeat" . "Repeats template for every item in a list.")
    ("ng-selected" . "Uses given expression to determine selected-state of option element.")
    ("ng-show" . "Hides the element if the expression is falsy.")
    ("ng-src" . "Stops browser from fetching images with {{templates}} in the URL.")
    ("ng-style" . "Sets style attributes from an object of DOM style properties. ")
    ("ng-submit" . "Eval the given expression when form is submitted, and prevent default.")
    ("ng-switch" . "Switch on given expression to conditionally change DOM structure.")
    ("ng-transclude" . "Signifies where to insert transcluded DOM.")
    ("ng-view" . "Signifies where route views are shown.")))

(defun ng-snip/docs (id)
  (message (cdr (assoc id ng-docs)))
  nil)

(defun ng-snip/maybe-space-after-attr ()
  (unless (looking-at "[ />]\\|$")
    (insert " ")))

(setq angular-snippets-root (file-name-directory
                            (or (buffer-file-name) load-file-name)))

(eval-after-load "yasnippet"
  (yas/load-directory (expand-file-name "snippets" angular-snippets-root)))

(provide 'angular-snippets)
;;; angular-snippets.el ends here
