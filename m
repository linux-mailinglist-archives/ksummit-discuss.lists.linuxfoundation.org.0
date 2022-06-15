Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB26C54C0AE
	for <lists@lfdr.de>; Wed, 15 Jun 2022 06:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33819418DC;
	Wed, 15 Jun 2022 04:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04w8SQ2UQ795; Wed, 15 Jun 2022 04:25:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E1766418D8;
	Wed, 15 Jun 2022 04:25:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7ECBDC002D;
	Wed, 15 Jun 2022 04:25:06 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4F8EDC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 04:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 301CA61007
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 04:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=fail (2048-bit key) reason="fail (message has been altered)"
 header.d=mit.edu
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id APM8iN1vPaQi
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 04:25:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1101D60FC7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 04:25:02 +0000 (UTC)
Received: from cwcc.thunk.org (pool-173-48-118-63.bstnma.fios.verizon.net
 [173.48.118.63]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 25F4P00E015388
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 Jun 2022 00:25:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
 t=1655267101; bh=GaCulJnfo5iXBqtblbk9G1Lk4SsnNzEvugTOCcxnIdQ=;
 h=Date:From:To:Subject;
 b=PWiZ7q0TwW6IfQknH7Tfh/JwelsDjHZtt2p7arKMeux6hmibk3nIZJ3maLyA/yE0E
 l0gH3YGqByqShKFO+VZHOQMn6siVMeYmdE6wUI8KUc3Di5z8d9TFShtuhCgDBFaQ6O
 NhRZ6RiZpYtKkfxZV2fCTdoduyr8TEa3+//9gIW6VbT9n8nATmTX2EGHd0N48Fbwtl
 ha17Kvit3QW8T8CJOg+A+I5wS6so23EQUmPoRxz1PiG4egtLqhSDGUqnnFYeyeuHHQ
 GZ96XLgvnYF3fMKIx2W4+TPGh9YNWB8QVIyuSF7IaTD/ciSTXyDHDnhOUhLkwIe8s9
 9VtzB+hF7Kpwg==
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 4C50615C42F8; Wed, 15 Jun 2022 00:25:00 -0400 (EDT)
Date: Wed, 15 Jun 2022 00:25:00 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <YqlfHHP8pn5ZAdlO@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] Maintainer's / Kernel Summit 2022 CFP
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

This year, the Maintainer's Summit will be held in Dublin on September
15th, 2022, just after the Linux Plumber's Conference (September
12-14).

As in previous years, the Maintainers Summit is invite-only, where the
primary focus will be process issues around Linux Kernel Development.
It will be limited to 30 invitees and a handful of sponsored
attendees.

Linus will be generating a core list of people to be invited to the
Maintainers Summit.  The top ten people from that list will receive
invites, and then program committee will use the rest of Linus's list
as a starting point of people to be considered.  People who suggest
topics that should be discussed at the Maintainers Summit will also
be added to the list for consideration.  To make topic suggestions for
the Maintainers Summit, please send e-mail to the
ksummit-discuss@lists.linuxfoundation.org list with a subject prefix
of [MAINTAINERS SUMMIT].

The Kernel Summit is organized as a track which is run in parallel
with the other tracks at the Linux Plumbers Conference (LPC), and is
open to all registered attendees of LPC.  The goal of the Kernel
Summit track will be to provide a forum to discuss specific technical
issues that would be easier to resolve in person than over e-mail.
The program committee will also consider "information sharing" topics
if they are clearly of interest to the wider development community
(i.e., advanced training in topics that would be useful to kernel
developers).

To suggest a topic for the Kernel Summit, please do two things. by
June 19th, 2022.  First, please tag your e-mail with [TECH TOPIC].  As
before, please use a separate e-mail for each topic, and send the
topic suggestions to the ksummit-discuss list.

Secondly, please create a topic at the Linux Plumbers Conference
proposal submission site and target it to the Kernel Summit track:

	https://lpc.events/event/16/abstracts/

Please do both steps.  I'll try to notice if someone forgets one or
the other, but your chances of making sure your proposal gets the
necessary attention and consideration are maximized by submitting both
to the mailing list and the web site.

If you were not subscribed on to the kernel-discuss mailing list from
last year (or if you had removed yourself after the kernel summit),
you can subscribe to the discuss list using mailman:

   https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

The program committee this year is composed of the following people:

Greg KH
Jens Axboe
Ted Ts'o
Arnd Bergmann
Jon Corbet

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
