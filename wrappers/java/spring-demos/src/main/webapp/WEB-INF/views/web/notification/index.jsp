<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:notification name="popupNotification"></kendo:notification>
<kendo:notification name="staticNotification" appendTo="#appendto"></kendo:notification>

<div class="demo-section">
    <div id="appendto" class="k-block"></div>
    
    <h3>Show notification:</h3>
    <p>
        <button id="showPopupNotification" class="k-button">As a popup at bottom-right</button><br />
        <button id="showStaticNotification" class="k-button">Static in the right panel</button>
    </p>
    
    
    <h3>Hide notification:</h3>
    <p>
        <button id="hideAllNotifications" class="k-button">Hide All Notifications</button>
    </p>
</div>
    
<style>
    .demo-section {
        width: 600px;
        padding: 20px 30px;
    }
    .demo-section:after {
        content: "";
        display: block;
        clear: both;
        height: 0;
    }
    .demo-section p {
        margin: 3px 0 20px;
        line-height: 40px;
    }
    .demo-section .k-button {
        width: 200px;
    }
    #appendto {
        float: right;
        width: 300px;
        height: 170px;
        margin: 1em 0;
        overflow: auto;
    }
</style>
<script>
    $(document).ready(function() {
        var popupNotification = $("#popupNotification").data("kendoNotification");
        var staticNotification = $("#staticNotification").data("kendoNotification");

        $("#showPopupNotification").click(function(){
            popupNotification.show(new Date().toLocaleTimeString(), "error");
        });

        $("#showStaticNotification").click(function(){
            staticNotification.show(new Date().toLocaleTimeString(), "info");
            var container = $(staticNotification.options.appendTo);
            container.scrollTop(container[0].scrollHeight);
        });

        $("#hideAllNotifications").click(function(){
            popupNotification.hide();
            staticNotification.hide();
        });

    });
</script>

<demo:footer />