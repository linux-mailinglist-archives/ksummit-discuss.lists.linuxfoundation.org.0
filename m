Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B0D234D35
	for <lists@lfdr.de>; Fri, 31 Jul 2020 23:37:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D12C188586;
	Fri, 31 Jul 2020 21:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lG9OiOIJF8r; Fri, 31 Jul 2020 21:37:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D77A8862C;
	Fri, 31 Jul 2020 21:37:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EDC8EC004D;
	Fri, 31 Jul 2020 21:37:54 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9B4E3C004D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B21086CC1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dar48Yklrq4K
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:37:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0BC186190
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:37:51 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (unknown [217.70.183.197])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id BDE4D3A4A36
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:27:33 +0000 (UTC)
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net
 [50.39.163.217]) (Authenticated sender: josh@joshtriplett.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id BAB531C0002;
 Fri, 31 Jul 2020 21:27:24 +0000 (UTC)
Date: Fri, 31 Jul 2020 14:27:21 -0700
From: josh@joshtriplett.org
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20200731212721.GC32670@localhost>
References: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Planning code obsolescence
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

On Fri, Jul 31, 2020 at 05:00:12PM +0200, Arnd Bergmann wrote:
> The majority of the code in the kernel deals with hardware that was made
> a long time ago, and we are regularly discussing which of those bits are
> still needed. In some cases (e.g. 20+ year old RISC workstation support),
> there are hobbyists that take care of maintainership despite there being
> no commercial interest. In other cases (e.g. x.25 networking) it turned
> out that there are very long-lived products that are actively supported
> on new kernels.
> 
> When I removed support for eight instruction set architectures in 2018,
> those were the ones that no longer had any users of mainline kernels,
> and removing them allowed later cleanup of cross-architecture code that
> would have been much harder before.
> 
> I propose adding a Documentation file that keeps track of any notable
> kernel feature that could be classified as "obsolete", and listing
> e.g. following properties:
> 
> * Kconfig symbol controlling the feature
> 
> * How long we expect to keep it as a minimum
> 
> * Known use cases, or other reasons this needs to stay
> 
> * Latest kernel in which it was known to have worked
> 
> * Contact information for known users (mailing list, personal email)
> 
> * Other features that may depend on this
> 
> * Possible benefits of eventually removing it

We had this once, in the form of feature-removal-schedule.txt. It was,
itself, removed in commit 9c0ece069b32e8e122aea71aa47181c10eb85ba7.

I *do* think there'd be value in having policies and processes for "how
do we carefully remove a driver/architecture/etc we think nobody cares
about". That's separate from having an actual in-kernel list of "things
we think we can remove".
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
