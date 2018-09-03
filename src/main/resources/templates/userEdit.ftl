<#import "parts/common.ftl" as c>

<@c.page>
    User Editor
<form action="/user" method="post">
    <div class="form-group">
        <div class="col-sm-5 px-0">
            <input class="form-control my-3" type="text" name="username" value="${user.username}">
        </div>
        <#list roles as role>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <input type="checkbox" name="${role}" aria-label="Checkbox for following text input">
                    </div>
                </div>
                <div class="col-sm-4">
                    <input type="text" class="form-control" aria-label="Text input with checkbox" value="${role}"
                           readonly>
                </div>
            </div>
        </#list>
    </div>
    <input type="hidden" name="userId" value="${user.id}">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button class="btn btn-primary" type="submit">Save</button>
</form>
</@c.page>