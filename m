Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5F587237
	for <lists@lfdr.de>; Fri,  9 Aug 2019 08:25:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8B84CBE4;
	Fri,  9 Aug 2019 06:24:44 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3ECDAA95
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 Aug 2019 06:24:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFAAF76F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 Aug 2019 06:24:40 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id m125so483273wmm.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 08 Aug 2019 23:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=vlxK8xDF4eNfC+oTwctLwIffFn6g/NeBo57WGK7Q3gU=;
	b=xOhv/AgDMYiE9KyZHkgzXThnQCvyF6ISM1r5vC6NF2sM9WekCUUwJorIcoRTmYbrSw
	+RNpdF5R4s0xT/4c37RT5KfKA3tDC58sqwGaxY5+L0jH9A6U9o5+0wDNi0QRClUSDtdG
	oMcxcEfPr16CxrybwUR2XDxx3kcf+a9iLsHuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=vlxK8xDF4eNfC+oTwctLwIffFn6g/NeBo57WGK7Q3gU=;
	b=XsSgq3kqtHh5jEgtogeO+WCkzMXaNV32uI8Xqp1aReWPLITHTZqls6ZXTJ6wdbuTtz
	j/cQvp3sR4A6ujRcjYLSyOC4bZOyM8JGhqEKnfy7umUJBEB6o/9USGhAOP3MxVTbtE1G
	BtUBSGseHwI8STePrbSkkqKP0HCpsg6yH30tNITls84K/1gWa7Oy7syeFPPPH8VfRvht
	e+JiE2wKY4Rm7BntukAg78gUMJ0YlAQMy0/pVsXIzJgLreCjucpR+RRV/+L5bTUuni4/
	sgFYKfn8hGL5I65xwhqO5xiSePqwQSs5OjPw0six2vaf0pPoyL/dfbyVgmMoK5xRLO12
	x2TA==
X-Gm-Message-State: APjAAAWFYlTtsaYvdajQdXTlEi7DBvj8RPFDOqXb/Ly2R3Hskx4ekORj
	+9PWtSqaoa3GFV0z5T8FPWYouObp7eJYig==
X-Google-Smtp-Source: APXvYqz0kDdPp+wTyWMQFnWceMauGBMePJ2g/1fHqBnNZuOA95FnqTKdnLQOC/8ZfQFj6RCHOr/G1w==
X-Received: by 2002:a1c:2d8b:: with SMTP id t133mr8656152wmt.57.1565331878886; 
	Thu, 08 Aug 2019 23:24:38 -0700 (PDT)
Received: from [192.168.200.9] ([193.68.39.228])
	by smtp.gmail.com with ESMTPSA id
	o20sm247958032wrh.8.2019.08.08.23.24.38
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Aug 2019 23:24:38 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <E24DF3AE-0595-4B9A-AE1C-9801A88BD5FF@labbott.name>
Date: Fri, 9 Aug 2019 02:24:35 -0400
To: ksummit-discuss@lists.linuxfoundation.org
X-Mailer: Apple Mail (2.3273)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: [Ksummit-discuss] Linux Foundation Technical Advisory Board
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

Hello everyone,

Friendly reminder that the TAB elections are coming soon:

The Linux Foundation Technical Advisory Board (TAB) serves as the
interface between the kernel development community and the Linux
Foundation. The TAB advises the Foundation on kernel-related matters,
helps member companies learn to work with the community, and works to
resolve community-related problems before they get out of hand.  We
also support the Code of Conduct committee in their mission.

The board has ten members, one of whom sits on the Linux Foundation
board of directors.

The election to select five TAB members will be held at the 2019 Kernel Summit
in Lisbon, Portugal September 9-11. As has been announced[2], we are moving to
an electronic voting system this year. Further details about the exact voting
procedures will be coming soon. Anyone is eligible to stand for election,
simply send your nomination to:

tech-board-discuss at lists.linux-foundation.org

With your nomination, please include a short candidate statement. This candidate
statement should focus on why you are running and what you hope to accomplish
on the TAB. We will be collecting these statements and making them publicly 
available.

The deadline for receiving nominations is 9am GMT+1 on September 9th (the first
day of Kernel Summit). Due to the use of electronic voting, this will be a hard
deadline!

Current TAB members, and their election year:

Jon Corbet		2017
Greg Kroah-Hartman	2017
Steven Rostedt		2017
Ted Tso			2017
Tim Bird		2017

Chris Mason		2018
Laura Abbott		2018
Olof Johansson		2018
Kees Cook		2018
Dan Williams		2018

The five slots from 2017 are all up for election.  As always, please
let us know if you have questions, and please do consider running.

Thanks,
Laura

[1] TAB members sit for a term of two years, and half of the board is
up for election every year. Five of the seats are up for election now.
The other five are halfway through their term and will be up for
election next year.

[2] https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006582.html
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
