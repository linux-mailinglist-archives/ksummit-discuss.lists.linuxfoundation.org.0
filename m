Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FF054F338
	for <lists@lfdr.de>; Fri, 17 Jun 2022 10:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B4D440606;
	Fri, 17 Jun 2022 08:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B4D440606
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=isuGlQm+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id utAjmJusi5ew; Fri, 17 Jun 2022 08:41:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3F27E40185;
	Fri, 17 Jun 2022 08:40:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F27E40185
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BC592C002D;
	Fri, 17 Jun 2022 08:40:57 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C630C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 08:40:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C203A4181F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 08:40:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C203A4181F
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=isuGlQm+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30FBcgHP4Esm
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 08:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BBA9417FB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BBA9417FB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655455251;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7UAoZfYPy0OrHs1KP5aawMUnCjfG/bDn8fdsVhu3tow=;
 b=isuGlQm+twqphRDSybizHFDtj4o0315TUMFZNb5dtQU0eej1mIqUQbQoNqMQMrsYdSbJhn
 jzVdWs5Ana5CquLJ+p/9iOAhC81WGSGyl/rpxZ1W45qGKvCUsrD5p+5NGoSd5uYbSxCD8z
 ZINi+8VtpYPxqdQY/g9oXLwV/8UesWo=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-574-pnvuZd3MP5evHC8pmV4YEQ-1; Fri, 17 Jun 2022 04:40:50 -0400
X-MC-Unique: pnvuZd3MP5evHC8pmV4YEQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 v7-20020a056402348700b004351fb80abaso2851337edc.14
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 01:40:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7UAoZfYPy0OrHs1KP5aawMUnCjfG/bDn8fdsVhu3tow=;
 b=N4nKuS4gwo+e7b35eXRexiUp2FXUO6NS4ePmZ4KFJtFlKcwx2gb1yzMydUnFC0uWPg
 VAM+0bKs67NX4Rtv+0PkzG/h80DSOhTu3lxSCnGj7OF8vtdDrwo+gs5t9nPXqwz6xnR/
 6a+q/X43blXg/MPvUb6N5pIdJSrhV2qSDUuU96sg1XtelhmrT0MApsyDFdlffrioSxCy
 7Q15EvxsCKNXbj5S4XeEeBl73C8d0pcjkTVThHDcR/QE4mCwVGFclnSRQXrNca3vvOj0
 bYhHdrgEwtvQZvdXtZkPIfTIGowGSD1mCYbzM+Xkvb07ebiZXU+0W5OBLmhBQdH5mQY4
 DWEA==
X-Gm-Message-State: AJIora9FP0oPTT7ctGD+23xVSptOwGKpDdpK/zX+6FvHTpY2e0CJLeOh
 WuZh+biq+wDnGIsjVywKSIAl1TGDXdYHeZ4DRsbShmh8cBCBz9YGsWNA1JPVZuedD8qc0kbLZ+u
 XLAFVmdybKSKGHtpY9Mx3Bue9aX2roDbtpXVPeXqw0Q==
X-Received: by 2002:a17:907:d19:b0:711:d10e:411 with SMTP id
 gn25-20020a1709070d1900b00711d10e0411mr8379130ejc.216.1655455249244; 
 Fri, 17 Jun 2022 01:40:49 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vQ0T5iTsm5LrKEjaLQvb1nUGtiQLlOoIWFuJJGZbFmYcovkjjZSESbyAWauzM+xX00FxkOQQ==
X-Received: by 2002:a17:907:d19:b0:711:d10e:411 with SMTP id
 gn25-20020a1709070d1900b00711d10e0411mr8379118ejc.216.1655455249034; 
 Fri, 17 Jun 2022 01:40:49 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 y11-20020a17090614cb00b00712057b037fsm1854630ejc.167.2022.06.17.01.40.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Jun 2022 01:40:48 -0700 (PDT)
Message-ID: <da1a3fdf-70d0-90db-3a8a-7cb0fcbdb37b@redhat.com>
Date: Fri, 17 Jun 2022 10:40:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Rob Herring <robherring2@gmail.com>, Theodore Ts'o <tytso@mit.edu>
References: <YqlfHHP8pn5ZAdlO@mit.edu>
 <CAL_JsqLz6b_r_d96C=Q21exqq8TQg1G5GkW6ttiEUTUZ+QYBJA@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAL_JsqLz6b_r_d96C=Q21exqq8TQg1G5GkW6ttiEUTUZ+QYBJA@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's / Kernel Summit 2022 CFP
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

Hi,

On 6/16/22 22:54, Rob Herring wrote:
> On Tue, Jun 14, 2022 at 10:25 PM Theodore Ts'o <tytso@mit.edu> wrote:
>>
>> This year, the Maintainer's Summit will be held in Dublin on September
>> 15th, 2022, just after the Linux Plumber's Conference (September
>> 12-14).
>>
>> As in previous years, the Maintainers Summit is invite-only, where the
>> primary focus will be process issues around Linux Kernel Development.
>> It will be limited to 30 invitees and a handful of sponsored
>> attendees.
>>
>> Linus will be generating a core list of people to be invited to the
>> Maintainers Summit.  The top ten people from that list will receive
>> invites, and then program committee will use the rest of Linus's list
>> as a starting point of people to be considered.  People who suggest
>> topics that should be discussed at the Maintainers Summit will also
>> be added to the list for consideration.  To make topic suggestions for
>> the Maintainers Summit, please send e-mail to the
>> ksummit-discuss@lists.linuxfoundation.org list with a subject prefix
>> of [MAINTAINERS SUMMIT].
> 
> Last year we moved to ksummit@lists.linux.dev. Did we move back?
> There's posts to both lists now.

Right, I send my "[TECH TOPIC] New userspace API for display-panel
brightness control" email to ksummit@lists.linux.dev because that
is specified as the list to use at:

https://lpc.events/event/16/abstracts/

under "Kernel Summit Presentation Proposals" this says:

"also send an e-mail for each submission to the ksummit@lists.linux.dev
mailing list with the subject prefix [TECH TOPIC]."

I would be happy to resend it to ksummit-discuss@lists.linuxfoundation.org,
as I later noticed was mentioned in the CFP email, but I'm waiting
for clarification which one is the list to use.

Regards,

Hans

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
