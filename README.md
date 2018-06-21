### ASKED : rails new asked / rails s -b 0.0.0.0

* posts 컨트롤러 `rails g controller posts index new create show edit update destroy` 

  * `index` 

    * 모든 것을 보여준다.

  * Create : `new` `create`

    * `new`

      form을 보여준다.

    * `create`

      * form 데이터를 받는다. (params)
      * Post에 Create 한다.

  * Read : `show`

    * Post 중에 하나를 선택한다.

  * Update : `edit` `update`

    * `edit`

      form을 보여준다

    * `update`

      * form 데이터를 받는다. (params)
      * Post 중에 하나를 선택한다.
      * update한다.

  * Delete : `destroy`

    * Post 중에 하나를 선택한다.
    * 삭제한다.

* users 컨트롤러 `rails g controller users index new create`

* post 모델 `rails g model post username:string title:string content:text` 

  * string `username`
  * string `title`
  * text `content`

* user 모델

  * string `username`
  * string `email`
  * string `password`