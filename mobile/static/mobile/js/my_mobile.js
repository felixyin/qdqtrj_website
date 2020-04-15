  function autoimg() {
            imgwidth = $('.imgauto').width() * 3 / 5;
            $('.imgauto').attr("height", imgwidth);

        }

        document.getElementById('nickname').focus();

        function cfm_msg() {
            if ($("#phone").val() == "") {
                alert("请您填写联系电话！方便稍后联系您");
                $("#phone").focus();
                return;
            }
            $.post('{% url "message" %}', {
                csrfmiddlewaretoken: $('input[name="csrfmiddlewaretoken"]').val(),
                phone: $('#phone').val(),
                content: $('#content').val(),
                name: $('#nickname').val(),
            }, function (res) {
                var j = JSON.parse(res);
                alert(j.msg);
                $('#phone').val('');
            });
        }


        var active = 0,
            as = document.getElementById('pagenavi').getElementsByTagName('a');

        for (var i = 0; i < as.length; i++) {
            (function () {
                var j = i;
                as[i].onclick = function () {
                    t2.slide(j);
                    return false;
                }
            })();
        }

        var t2 = new TouchSlider({
            id: 'slider', speed: 600, timeout: 6000, before: function (index) {
                as[active].className = '';
                active = index;
                as[active].className = 'active';
            }
        });
