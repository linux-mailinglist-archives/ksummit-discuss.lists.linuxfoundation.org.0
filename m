Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10E934BBCB
	for <lists@lfdr.de>; Sun, 28 Mar 2021 11:23:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5793840218;
	Sun, 28 Mar 2021 09:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U8BNQtidnDdC; Sun, 28 Mar 2021 09:23:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8788540205;
	Sun, 28 Mar 2021 09:23:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 516B8C000A;
	Sun, 28 Mar 2021 09:23:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EABABC000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 28 Mar 2021 09:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAB8083AD4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 28 Mar 2021 09:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hs7xwwDfFiby
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 28 Mar 2021 09:23:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E73AA83ABA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 28 Mar 2021 09:23:39 +0000 (UTC)
Received: from ip4d14bd53.dynamic.kabel-deutschland.de ([77.20.189.83]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lQRdr-0000Mj-CB; Sun, 28 Mar 2021 11:23:31 +0200
From: Thorsten Leemhuis <linux@leemhuis.info>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
 <6a220d2c-568e-2e41-53a4-0800e206d0a6@leemhuis.info>
Message-ID: <14d9b8a3-94ce-00a6-a17b-934ffd999697@leemhuis.info>
Date: Sun, 28 Mar 2021 11:23:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <6a220d2c-568e-2e41-53a4-0800e206d0a6@leemhuis.info>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616923420;45f80cd0;
X-HE-SMSGID: 1lQRdr-0000Mj-CB
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-doc@vger.kernel.org
Subject: Re: [Ksummit-discuss] [1/5] reporting-issues: header and TLDR
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

On 26.03.21 07:15, Thorsten Leemhuis wrote:
> On 26.03.21 07:13, Thorsten Leemhuis wrote:
>>
>> Lo! Since a few months mainline in
>> Documentation/admin-guide/reporting-issues.rst contains a text written
>> to obsolete the good old reporting-bugs text. For now, the new document
>> still contains a warning at the top that basically says "this is WIP".
>> But I'd like to remove that warning and delete reporting-bugs.rst in the
>> next merge window to make reporting-issues.rst fully official. With this
>> mail I want to give everyone a chance to take a look at the text and
>> speak up if you don't want me to move ahead for now.
>>
>> For easier review I'll post the text of reporting-issues.rst in reply to
>> this mail. I'll do that in a few chunks, as if this was a cover letter
>> for a patch-set. 
> Here we go:
> [...]
> Reporting issues
> ++++++++++++++++
> 
> The short guide (aka TL;DR)
> ===========================
> 
> [...]


FWIW, on another channel someone mentioned the process in the TLDR is
quite complicated when it comes to regressions in stable and longterm
kernels. I looked at the text and it seemed like a valid complaint, esp.
as those regressions are something we really care about.

To solve this properly I sadly had to shake up the text in this section
completely and rewrite parts of it. Find the result below. I'm quite
happy with it, as it afaics is more straight forward and easier to
understand. And it matches the step-by-step guide better. And the best
thing: it's a bit shorter than the old TLDR.

I'll wait a day or two and then will send it through the regular review
together with a few small other fixes that piled up for the text, just
wanted to add it here for completeness.

---
The short guide (aka TL;DR)
===========================

Are you facing a regression with vanilla kernels from the same stable or
longterm series? One still supported? Then search the `LKML
<https://lore.kernel.org/lkml/>`_ and the `Linux stable mailing list
<https://lore.kernel.org/stable/>_` archives for matching reports to
join. If you don't find any, install `the latest release from that
series <https://kernel.org/>`_. If it still shows the issue, report it
to the stable mailing list and the stable maintainers.

In all other cases try your best guess which kernel part might be
causing the issue. Check the :ref:`MAINTAINERS <maintainers>` file for
how its developers expect to be told about problems, which most of the
time will be by email with a mailing list in CC. Check the destination's
archives for matching reports; search the `LKML
<https://lore.kernel.org/lkml/>`_ and the web, too. If you don't find
any to join, install `the latest mainline kernel
<https://kernel.org/>`_. If the issue is present there, send a report.

If you would like to see the issue also fixed in a still supported
stable or longterm series, install its latest release. If it shows the
problem, search for the change that fixed it in mainline and check if
backporting is in the works or was discarded; if it's neither, ask those
who handled the change for it.

**General remarks**: When installing and testing a kernel as outlined
above, ensure it's vanilla (IOW: not patched and not using add-on
modules). Also make sure it's built and running in a healthy environment
and not already tainted before the issue occurs.

While writing your report, include all information relevant to the
issue, like the kernel and the distro used. In case of a regression try
to include the commit-id of the change causing it, which a bisection can
find. If you're facing multiple issues with the Linux kernel at once,
report each separately.

Once the report is out, answer any questions that come up and help where
you can. That includes keeping the ball rolling by occasionally
retesting with newer releases and sending a status update afterwards.

---


Ciao, Thorsten
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
