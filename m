Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 849E52457AD
	for <lists@lfdr.de>; Sun, 16 Aug 2020 14:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D097985531;
	Sun, 16 Aug 2020 12:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UiBBsHJwl6L8; Sun, 16 Aug 2020 12:53:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2FD18565B;
	Sun, 16 Aug 2020 12:53:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 75200C088B;
	Sun, 16 Aug 2020 12:53:41 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D7D84C0051
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 12:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD33587CB8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 12:53:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rANxRoJwVHvA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 12:53:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (bilbo.ozlabs.org [203.11.71.1])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A48BA87C4A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 12:53:37 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4BTxtk1wzYz9sTR;
 Sun, 16 Aug 2020 22:53:32 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1597582414;
 bh=xpLVIzLpo/1ZhQwWcKA7c8rb6SmsBOgSF5mqM7GHsWY=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=fb3+potxlS9NiACHDhstC8E0WATgvYJ9izglTZ2GSFNu31rYjqsHvMT3VxJ9fg6Od
 twnwYvGCoKrRjF7zJRv+8DnUIRRdHeBBq8NH+WFZ1q2oo8X6YmAmhM8rp6Ku5RSf9q
 HuktcBiE54nMDMbmWUpdYcah3fBc5THqFOJ0H77+s2WA2YKyTfQvbeT1z95WeSw58l
 brk3dL0BwZFiwYF58Cq08Mb1RLxfYAUOni1AlzkVVvSideVn8Qdn6kQP9Mo87oeOJm
 BNFEA037TPSBKGrvSeK5CpfSMa6c/xRWS7KYVHk9eqgVIVErt50sFLkjQaaygClnOW
 OjOMo8L55u9gg==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Arnd Bergmann <arnd@arndb.de>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Mike Rapoport <rppt@linux.ibm.com>, linux-arch <linux-arch@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
In-Reply-To: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
References: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
Date: Sun, 16 Aug 2020 22:53:29 +1000
Message-ID: <874kp2ah12.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
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

Arnd Bergmann <arnd@arndb.de> writes:
> I have submitted the below as a topic for the linux/arch/* MC that Mike
> and I run, but I suppose it also makes sense to discuss it on the
> ksummit-discuss mailing list (cross-posted to linux-arch and lkml) as well
> even if we don't discuss it at the main ksummit track.
>
>      Arnd
>
> 8<---
...
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
>
> With that information, my hope is that it becomes easier to plan when
> some code can be removed after the last users have stopped upgrading
> their kernels, while also preventing code from being removed that is
> actually still in active use.
>
> In the discussion at the linux/arch/* MC, I would hope to answer these
> questions:
>
> * Do other developers find this useful to have?

Yes!

> * Where should the information be kept (Documentation/*, Kconfig,
> MAINTAINERS, wiki.kernel.org, ...)

Documentation/ seems like the obvious place. Possibly also somewhere on
wiki.kernel.org or elsewhere so that people can contribute information
without having to submit a formal patch.

> * Which information should be part of an entry?

Your list above is pretty good.

For features that relate to specific hardware I think it would be useful
to have some more information.

For example when the hardware was last manufactured, who made it, how
could it be purchased when it was available (eg. was it for sale to the
public or in limited quantities or only to certain people or internal to
a particular company).


> * What granularity should this be applied to -- only high-level features
> like CPU architectures and subsystems, or individual drivers and machines?

I think it can make sense at many levels. It probably just depends on
how much effort folks want to go to in order to track down the
information.

Looking at powerpc it would be useful to have that sort of info for
individual boards, as well as each platform, CPU families and specific
drivers.

cheers
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
