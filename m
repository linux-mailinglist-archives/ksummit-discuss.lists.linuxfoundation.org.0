Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B2F346894
	for <lists@lfdr.de>; Tue, 23 Mar 2021 20:10:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF89760661;
	Tue, 23 Mar 2021 19:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7skmkuo76Ee5; Tue, 23 Mar 2021 19:10:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0649260863;
	Tue, 23 Mar 2021 19:10:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD6F1C000D;
	Tue, 23 Mar 2021 19:10:02 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A522EC000D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 19:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 933DB404E9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 19:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yHlIzmV-Cs1o
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 19:09:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8860E40498
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 19:09:58 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lOmPa-0005x5-Uy; Tue, 23 Mar 2021 20:09:54 +0100
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <YFkSqIN90S4a3HiF@mit.edu>
 <54aeb1f7-ffc7-74e1-a731-8970d44ff852@leemhuis.info>
 <CAMwyc-Sqbkg=VxCWcfRazkGG7vkwEQ43m9Dov_Nawia5MN_oUQ@mail.gmail.com>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <f5df1023-eabb-9f46-fe30-dd90851b65f9@leemhuis.info>
Date: Tue, 23 Mar 2021 20:09:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAMwyc-Sqbkg=VxCWcfRazkGG7vkwEQ43m9Dov_Nawia5MN_oUQ@mail.gmail.com>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616526598;f34c7120;
X-HE-SMSGID: 1lOmPa-0005x5-Uy
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 workflows@vger.kernel.org
Subject: Re: [Ksummit-discuss] RFC: create mailing list "linux-issues"
 focussed on issues/bugs and regressions
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

On 23.03.21 16:01, Konstantin Ryabitsev wrote:
> On Tue, 23 Mar 2021 at 04:58, Thorsten Leemhuis <linux@leemhuis.info> wrote:
>>>  If we can
>>> actually get users to *read* it, I think it's going to save kernel
>>> developers a huge amount of time and frustration.
>> And users hopefully as well. But yes, making them read it is the
>> problem. :-/
> I've added a very visible admonition on the front of
> bugzilla.kernel.org. Hopefully, it will help direct some users to
> their distro bug trackers first.

Ahh, great, thx!

>>> I wonder if it might be useful to have a form which users could be
>>> encouraged to fill out so that (a) the information is available in a
>>> structured format so it's easier for developers to find the relevant
>>> information, (b) so it is easier for programs to parse, for easier
>>> reporting or indexing, and (c) as a nudge so that users remember to
>>> report critical bits of information such as the hardware
>>> configuration, the exact kernel version, which distribution userspace
>>> was in use, etc.
>>>
>>> There could also be something in the text form which would make it
>>> easier for lore.kernel.org searches to identify bug reports.  (e.g.,
>>> "LINUX KERNEL BUG REPORTER TEMPLATE")
>>
>> Hmmm, yeah, I like that idea. I'll keep it in mind for later: I would
>> prefer to get reporting-issues.rst officially blessed and
>> reporting-bugs.rst gone before working on further enhancements.
> 
> To my knowledge, git project uses a tool for that:
> https://git-scm.com/docs/git-bugreport
> 
> Theoretically, a similar tool could exist for the kernel.

Wasn't aware of that tool, thx for pointing it out, will take a closer look.

Ciao, Thorsten
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
