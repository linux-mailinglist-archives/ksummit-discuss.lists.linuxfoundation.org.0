Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBBAA08E1
	for <lists@lfdr.de>; Wed, 28 Aug 2019 19:48:12 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DD28634D9;
	Wed, 28 Aug 2019 17:47:59 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 32A722AB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 17:47:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95F7D13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 17:47:40 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id w18so554775qki.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 10:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
	h=from:content-transfer-encoding:mime-version:subject:date:references
	:to:in-reply-to:message-id;
	bh=ktghpvq4jb4ljl3MH1+Q/2aeglnyX9B8b2I5p81APzM=;
	b=gVfGVYMixD5gAay+5T9e3p2Z6Mzx33242Iw/8G/d14KpuBlEXhc6dt9e5FGGwiugMq
	b3UDWo9+9i8l6+wzsOSNz/ohzxOJ2rOI+swbrLVZYjA3DhZhhI6Y64n+IzDqUxqj6VDs
	mLl+sQipkURuoWGrHT+kP3a3w7+/h5A3XdnaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=ktghpvq4jb4ljl3MH1+Q/2aeglnyX9B8b2I5p81APzM=;
	b=iuvRJO6pxtKuiNnU4+WzVW8d24b/o9TOgNEJA2i5LiHgVr5B/rK+8jRi0EbG7WCh1R
	ChXrY3f24Ka0nEhrh0A0LPSHTnOHkTo0IXL7CM0G4iFPH7YMn69H/STbJ+Ma79e+VeUV
	9Kk2xi7YPK6bigUjVXSQB2uqho50brt3VTBrEbq4bS64aov3V9hbYM9rKRJKJhg61Y24
	IYp5n04ACr5eCxNWMbYW9dfnjDQ/Fv0wDVoQ5HG06nqUwTetN+R8MvNLa2Q23P5CTCDK
	W+lcKSV+M4/cVTVcxdjvrHTNL09kpY9ii4mcyJUF7QacZ7GkFDiXy0X/vIM7A5QNQsSI
	7pAQ==
X-Gm-Message-State: APjAAAVgKh9X/e97fgx8oNPvAg5ViDAq5cgbgJw4e1XprnfUCus1aJZo
	IreocVJc2RoPBKayF24vSaubsCMpels10A==
X-Google-Smtp-Source: APXvYqzRKJzpHgTKobowrOAOpgYS9D2tgGJA0aSw+GwWmxAgY/PSiR83d2+OL4eeId3GuLluKdBJvg==
X-Received: by 2002:a05:620a:1312:: with SMTP id
	o18mr5097682qkj.458.1567014459158; 
	Wed, 28 Aug 2019 10:47:39 -0700 (PDT)
Received: from lauras-mbp.fios-router.home
	(pool-96-235-39-235.pitbpa.fios.verizon.net. [96.235.39.235])
	by smtp.gmail.com with ESMTPSA id m9sm1398646qtp.27.2019.08.28.10.47.38
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Aug 2019 10:47:38 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 28 Aug 2019 13:47:35 -0400
References: <E24DF3AE-0595-4B9A-AE1C-9801A88BD5FF@labbott.name>
To: ksummit-discuss@lists.linuxfoundation.org
In-Reply-To: <E24DF3AE-0595-4B9A-AE1C-9801A88BD5FF@labbott.name>
Message-Id: <44D37D71-113E-40BA-81B8-5D8F0962C13A@labbott.name>
X-Mailer: Apple Mail (2.3273)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- Call for nominations
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


> On Aug 9, 2019, at 2:24 AM, Laura Abbott <laura@labbott.name> wrote:
> 
> Hello everyone,
> 
> Friendly reminder that the TAB elections are coming soon:
> 
> The Linux Foundation Technical Advisory Board (TAB) serves as the
> interface between the kernel development community and the Linux
> Foundation. The TAB advises the Foundation on kernel-related matters,
> helps member companies learn to work with the community, and works to
> resolve community-related problems before they get out of hand.  We
> also support the Code of Conduct committee in their mission.
> 
> The board has ten members, one of whom sits on the Linux Foundation
> board of directors.
> 
> The election to select five TAB members will be held at the 2019 Kernel Summit
> in Lisbon, Portugal September 9-11. As has been announced[2], we are moving to
> an electronic voting system this year. Further details about the exact voting
> procedures will be coming soon. Anyone is eligible to stand for election,
> simply send your nomination to:
> 
> tech-board-discuss at lists.linux-foundation.org
> 
> With your nomination, please include a short candidate statement. This candidate
> statement should focus on why you are running and what you hope to accomplish
> on the TAB. We will be collecting these statements and making them publicly 
> available.
> 
> The deadline for receiving nominations is 9am GMT+1 on September 9th (the first
> day of Kernel Summit). Due to the use of electronic voting, this will be a hard
> deadline!
> 
> Current TAB members, and their election year:
> 
> Jon Corbet		2017
> Greg Kroah-Hartman	2017
> Steven Rostedt		2017
> Ted Tso			2017
> Tim Bird		2017
> 
> Chris Mason		2018
> Laura Abbott		2018
> Olof Johansson		2018
> Kees Cook		2018
> Dan Williams		2018
> 
> The five slots from 2017 are all up for election.  As always, please
> let us know if you have questions, and please do consider running.
> 
> Thanks,
> Laura
> 
> [1] TAB members sit for a term of two years, and half of the board is
> up for election every year. Five of the seats are up for election now.
> The other five are halfway through their term and will be up for
> election next year.
> 
> [2] https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006582.html

Reminder to send in your candidate statements, you can see the
current ones at 

https://docs.google.com/document/d/1E3_W1c-xJMx9o2PCnKiGt3vqs-mPh77yNO4GSqNipOQ

Thanks,
Laura

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
