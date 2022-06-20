Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 342755511AE
	for <lists@lfdr.de>; Mon, 20 Jun 2022 09:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9C5E830FB;
	Mon, 20 Jun 2022 07:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9C5E830FB
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=ig/3/AQD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aad9Tu9-_j7i; Mon, 20 Jun 2022 07:41:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CE3D0830DE;
	Mon, 20 Jun 2022 07:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE3D0830DE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 463EEC002D;
	Mon, 20 Jun 2022 07:41:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD49FC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 07:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95278830C5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 07:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95278830C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vD27qAPR7hek
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 07:41:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BDB7830C2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BDB7830C2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 07:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655710888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YXSzAxnEDHc0GzZg9LFWeAVawAuDa+9Kr9EAPzwIKf4=;
 b=ig/3/AQDNrzMlv5FEUkKkQatbIaPkiX0xj+Q1GUNAFBarWMW8FcgWSABXf5Gyw6ENvqb7X
 RMTEQPbM8fR9ZjJaHFlbSAS98BCKwoh1MqjGwG+u+iYzs61cOOAdTfikR6lB2rRUQMVgTA
 VN4DJmAtHm1wJfu2nRnkYXB1QaC7J2s=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517--0tyIeXdORGrwUMtn_wdWA-1; Mon, 20 Jun 2022 03:41:27 -0400
X-MC-Unique: -0tyIeXdORGrwUMtn_wdWA-1
Received: by mail-ej1-f72.google.com with SMTP id
 kf3-20020a17090776c300b0070d149300e9so3119366ejc.15
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 20 Jun 2022 00:41:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:from
 :subject:to:content-language:content-transfer-encoding;
 bh=YXSzAxnEDHc0GzZg9LFWeAVawAuDa+9Kr9EAPzwIKf4=;
 b=mpFf9C9sCAIVvgaaoqHvSDSyyahOSKM+KK8/en2sYMM4Yc3Km6X+d68nM+Tc4qUS7C
 wuQMUiJVDji3mbWQIqCVvWyzCw4NDcECC5OoyJ1UK4/AMMsxtZHjpu0NNAc2kgdIkG9k
 SAuei4ubSiypoQVLQSQzwyPiiHW0qGljDi6V3lTFfVbK+SyWrDU1bephqlhkdTC98lED
 oX6AKQ3hvYngga79esPiCGrFzxUW6Ta85vevAw+aQw5tEglF+9uKF/M4Y+vOCwsjIj5G
 9RJaLVoy7P8f1UOhogHJ/kCn4PvpJmJ8fyYOR8HgAiwcckSYUbVICbPKsD+gPYlD25iK
 CSWg==
X-Gm-Message-State: AJIora/4fMvTDjmctaanuCCIWusU9vKJWMa/8KM1rjLsAXp78OolGXNv
 M713rR+jQx8VTi9lrankT3SeSQO+Y4CdzUCGBi3IsMoUH1s5lEljZryzqAik49kUFQChx2bNjgZ
 hLBnt222nn6z/Y9KfWVPUIxSWmQHZkHLphQX2jznP3Q==
X-Received: by 2002:a17:907:97d5:b0:706:76ba:f28f with SMTP id
 js21-20020a17090797d500b0070676baf28fmr19069326ejc.367.1655710886272; 
 Mon, 20 Jun 2022 00:41:26 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1v1BPks6YVizebmwVcwui0Ffl+jTRXtv22hkp4mG2ambMwVOLW+ZvnXAZD/kSCca2ZvBBOHqA==
X-Received: by 2002:a17:907:97d5:b0:706:76ba:f28f with SMTP id
 js21-20020a17090797d500b0070676baf28fmr19069315ejc.367.1655710885956; 
 Mon, 20 Jun 2022 00:41:25 -0700 (PDT)
Received: from [10.87.1.157] ([145.15.244.231])
 by smtp.gmail.com with ESMTPSA id
 wi18-20020a170906fd5200b00707d11fd421sm5334857ejb.107.2022.06.20.00.41.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jun 2022 00:41:25 -0700 (PDT)
Message-ID: <efde4273-ae38-c050-f3ed-177e175e0007@redhat.com>
Date: Mon, 20 Jun 2022 09:41:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Hans de Goede <hdegoede@redhat.com>
To: ksummit@lists.linux.dev, ksummit-discuss@lists.linuxfoundation.org
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: [Ksummit-discuss] [TECH TOPIC] New userspace API for display-panel
	brightness control
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

<resend to both lists, because of confusion of which list to use>

Hi All,

As requested here is a copy of my LPC kernel summit track submission:

Title: New userspace API for display-panel brightness control

The current userspace API for brightness control offered by
/sys/class/backlight devices has various problems:

1. There is no way to map the backlight device to a specific
display-output / panel

2. On x86 there can be multiple firmware + direct-hw-access
methods for controlling the backlight and the kernel may
register multiple backlight-devices based on this which are
all controlling the brightness for the same display-panel.
To make things worse sometimes only one of the registered
backlight devices actually works.

3. Controlling the brightness requires root-rights requiring
desktop-environments to use suid-root helpers for this.

4. The scale of the brightness value is unclear, the API does
not define if "perceived brightness" or electrical power is
being controlled and in practice both are used without userspace
knowing which is which.

5. The API does not define if a brightness value of 0 means off,
or lowest brightness at which the screen is still readable
(in a low lit room), again in practice both variants happen.

This talk will present a proposal for a new userspace API
which intends to address these problems in the form of a
number of new properties for drm/kms properties on the
drm_connector object for the display-panel.

This talk will also focus on how to implement this proposal
which brings several challenges with it:

1. The mess of having multiple interfaces to control a laptop's
internal-panel will have to be sorted out because with the new
API we can no longer just register multiple backlight devices
and let userspace sort things out.

2. In various cases the drm/kms driver driving the panel
does not control the brightness itself, but the brightness
is controlled through some (ACPI) firmware interface such
as the acpi_video or nvidia-wmi-ec-backlight interfaces.

This introduces some challenging probe-ordering issues,
the solution for which is not entirely clear yet, so this
part of the talk will be actively seeking audience input
on this topic.


Comments:
This is a duplicate submission with one which I submitted for
the "LPC Refereed Track" before the "Kernel Summit 2022 CFP" posting.

I recently send a RFC email about this to the relevant mailinglists:
https://lore.kernel.org/dri-devel/0d188965-d809-81b5-74ce-7d30c49fee2d@redhat.com/

As well as another RFC laying out some initial backlight code
refactoring steps. As there is a bunch of technical debt which
needs to be addressed before work on a new uAPI can even begin:
https://lore.kernel.org/dri-devel/98519ba0-7f18-201a-ea34-652f50343158@redhat.com/

I'm working on the refactoring now. I believe the refactoring
is more likely to land in 5.21 then in 5.20. Let alone that
the new uAPI on the kernel side + the mandatory userspace code
consuming the uAPI will be ready before plumbers.

IOW I expect this to still be very much in flux during Plumbers,
so this won't be a presentation presenting only already finished
work.

Regards,

Hans

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
