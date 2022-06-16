Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB52C54E11D
	for <lists@lfdr.de>; Thu, 16 Jun 2022 14:52:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 242C360BF1;
	Thu, 16 Jun 2022 12:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZGi9O46hiM0; Thu, 16 Jun 2022 12:52:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 78A4A60AE1;
	Thu, 16 Jun 2022 12:52:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 387FFC002D;
	Thu, 16 Jun 2022 12:52:14 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28669C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:52:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 092E081959
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZ4Ubk-ydmVs
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1510081852
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 12:52:10 +0000 (UTC)
Received: from [2a02:8108:963f:de38:eca4:7d19:f9a2:22c5]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1o1oym-0003AN-9a; Thu, 16 Jun 2022 14:52:08 +0200
Message-ID: <6223a720-c835-d841-eb1d-e090875a3a91@leemhuis.info>
Date: Thu, 16 Jun 2022 14:52:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
To: ksummit-discuss@lists.linuxfoundation.org
Content-Language: en-US
From: Thorsten Leemhuis <linux@leemhuis.info>
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1655383931;e605dbc2;
X-HE-SMSGID: 1o1oym-0003AN-9a
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Regression tracking &
 fixing: current state, problems, and next steps
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

This session is meant to complement the kernel summit session with the
same title I just submitted separately
(https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2022-June/007339.html
). The idea is to summarize in this session what has been discussed and
agreed on in that ksummit session and further discuss issues that need
further discussion.

I used a similar model in 2017 and it seems it worked well for everyone.
What exactly will be discussed in this sessions depends on how the
kernel summit session evolves, but I expect the following topics might
need further discussion among the core maintainers (for details on any
of these points please see the kernel summit submission linked above):

 * How slow quite a few mainline regressions are resolved, as even
simple regression fixes sometimes linger in -next for weeks before being
mainlined.

 * Do we care that some regressions (and many bugs) reported in
bugzilla.kernel.org are never forwarded to the maintainers? And if so,
what do we want to do about it? I tried to keep an eye on things, but
that's sometimes quite time-consuming.

 * Should I track all or some regression with regzbot that were reported
by CI systems?

 * open question: Am I holding this regression tracking thingy right or
do you want me to do it differently somehow? Or is there anything else I
can do to make my regression tracking efforts more useful for maintainers?

Ciao, Thorsten
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
