Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98295344966
	for <lists@lfdr.de>; Mon, 22 Mar 2021 16:38:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 694A94027A;
	Mon, 22 Mar 2021 15:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xMYUPQ0Qs-8B; Mon, 22 Mar 2021 15:38:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8841240281;
	Mon, 22 Mar 2021 15:38:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 524E7C0001;
	Mon, 22 Mar 2021 15:38:38 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7F0D0C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 15:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 657C340166
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 15:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUxvhhVslGaJ
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 15:38:35 +0000 (UTC)
X-Greylist: delayed 00:20:12 by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DEE540137
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 15:38:35 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lOMJv-0006QD-Qm; Mon, 22 Mar 2021 16:18:19 +0100
From: Thorsten Leemhuis <linux@leemhuis.info>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 ksummit-discuss@lists.linuxfoundation.org, workflows@vger.kernel.org,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
Date: Mon, 22 Mar 2021 16:18:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616427515;63b4fec0;
X-HE-SMSGID: 1lOMJv-0006QD-Qm
Subject: [Ksummit-discuss] RFC: create mailing list "linux-issues" focussed
 on issues/bugs and regressions
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


Lo! I want to provide users with an easier way to search our multitude
of mailing lists for reports about issues (aka bugs), as reporting the
same kernel problem multiple times has known downsides for everyone
involved. That's why I propose to create this new mailing list:

linux-issues@lists.linux.dev

Developers and users reporting or handling issues then can CC it or
search it via lore. But this will only fly if the idea has buy-in from
at least the core kernel maintainers, to make sure they and the
developers actually use it. That's why I'm looking for feedback with
this mail and also CCed ksummit-discuss, as that's the easiest way to
make sure maintainers get aware of this idea and can raise their voice.


Note, there is a second reason why ksummit-discuss is CCed: another
reason why I want to create this new list is making it easier to find
and track regressions reported to our various mailing lists (often
without LKML in CC, as for some subsystems it's seems to be custom to
not CC it). Back on the maintainers summit in 2017 it was agreed to
create a dedicated list for this purpose
(https://lwn.net/Articles/738216/). I even requested a
"linux-regressions@vger.kernel.org" a while later, but didn't hear
anything back; and, sadly, about the same time I started having trouble
finding spare time for working on regression tracking. :-/

But I soon will get back into that area:
https://linux-regtracking.leemhuis.info/post/hello-world/ Hence it's a
good time to prepare some groundwork for that. But these days I think
having something like linux-regressions@lists.linux.dev might be over
engineered, at least for now: a linux-issues@lists.linux.dev with a
simple "[regressions]" in the subject will suffice, as that tag is
something a lot of people are used to already. And if we think we need
that list we can still create it in the future. Or what do you folks
think about it?



We can obviously bikeshed about the name for the list. I'm sure some
people will prefer to use "bugs" instead of "issues" there. I propose
"issues" for now, because the new text I've written about reporting
kernels issues/bugs uses the word "issues" in the filename, the title,
and the body while avoiding "bug" (see
Documentation/admin-guide/reporting-issues.rst or
https://www.kernel.org/doc/html/latest/admin-guide/reporting-issues.html
). I chose this approach as users are dealing with issues that might or
might not be bugs in the kernel. We discussed this before above text was
merged, but in the end stayed with issues:
https://lore.kernel.org/linux-doc/b5f5dfad-07bb-b518-0dff-3aa340333046@infradead.org/
BTW, creating this list will partly solve the second of the "FIXME
warning boxes" currently left in that text (two others are solved by
patches that are under review currently).


The question "Why not simply LKML" will likely pop up, but the thing is:
searching for reports there will often turn up patches that improve the
kernel and don't fix anything. That makes it hard to find issue reports,
especially for users that are not used to deal with mailing lists and
their archives.

And yes, I'm quite aware that searching linux-issues@lists.linux.dev
list obviously won't turn up reports that are filed in
bugzilla.kernel.org or some other bug tracking tool. That's okay, as the
reporting-issues.rst tells users to look in those places as well.

Another "and yes, I'm quite aware" note: sure reporting issues/bugs by
mail has downsides and maybe instead of creating yet another mailing
list it would be better if all the kernel issues would be reported to a
central place like bugzilla.kernel.org. But that tracker doesn't work
that well currently, as quite a few of the issues filed there afaics
never reach the people that need to be handle them. I don't see that
changing any time soon (we had a discussion about this recently:
https://lore.kernel.org/linux-doc/20210111194822.4kvl2tx24anyu23k@chatter.i7.local/
).

Creating a new mailing list for issues OTOH is something that can be
done quickly and easily to improve the situation without too much
hassle. That's why that's my plan currently, unless the discussion that
hopefully evolved due to this mail leads to something better. :-D

Ciao, Thorsten
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
