Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2094354CFB1
	for <lists@lfdr.de>; Wed, 15 Jun 2022 19:25:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20AB240B05;
	Wed, 15 Jun 2022 17:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pOI4KFPCViE8; Wed, 15 Jun 2022 17:25:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9106F40B07;
	Wed, 15 Jun 2022 17:25:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 51377C002D;
	Wed, 15 Jun 2022 17:25:16 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D717C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 17:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECCB983046
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 17:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=lwn.net
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L80CPblvc3Eh
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 17:25:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A7CB82F57
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 17:25:14 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:281:8300:73::5f6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 8A9CF2CC;
 Wed, 15 Jun 2022 17:25:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 8A9CF2CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1655313913; bh=MW5/uM8qXStO60XqebGacabDgglYXYkAHsdORNbhX1k=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=DcuCBIGt6myJNAsOaiA8rmE+9wVlNUyKCsljA5vLETQUh0Z6gIMJVGnf6eXZUdr/s
 mvnLx2q7wMaCjbAcXVtWdccfwEnsXtTcB3z93fZt7Dui1faMBc5eVjuQrE3oeKwLZ+
 OhwbZU8ZSk8/AmbQwpRwbNrKBJ+2RP9GsGU+RCeL28u5naALif0ULpPOAq2dvD5MK6
 fcJUpkc6v6jgkIc6pHDVT50qBp8H2I6NqNbXaXMo/jUjEhXrxIVBf3NnNu7o4/yCrb
 6TtfLc2h8PH2fbb2wUqlp4Sit8z/WOXda3Wd3PzmwlPLdp/nW8TC5N/l+6nCc5ZQuT
 mDvSRWtp7aQVA==
From: Jonathan Corbet <corbet@lwn.net>
To: Jan Kara <jack@suse.cz>, Jiri Kosina <jikos@kernel.org>
In-Reply-To: <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan>
Date: Wed, 15 Jun 2022 11:25:12 -0600
Message-ID: <87h74lvnyf.fsf@meer.lwn.net>
MIME-Version: 1.0
Cc: Luca Weiss <luca@z3ntu.xyz>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Christoph Hellwig <hch@lst.de>, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
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

Jan Kara <jack@suse.cz> writes:

> Yeah. Related to this is the fact that this way eBPF hooks become de-facto
> API of the kernel with all the implications for required stability. It is
> one thing to use eBPF for kernel introspection / monitoring (there
> occasional breakage is kind of expected by userspace) and another to enable
> hardware with it where people just expect things to work...

Relevant to this whole thing, I think, is the multigenerational LRU
discussion at LSFMM: https://lwn.net/Articles/894859/

One aspect that was only dropped in as a response to a question is that
the plan is to add a BPF hook to manage the movement of pages between
LRU generations; this will be done because nobody really knows how to
come up with an optimal solution to that problem for the general case.
That's about as core as it gets and, if users are tweaking memory
management with BPF, that will surely achieve ABI status in short order.

Beyond that, though, is the temptation to say "we don't have to figure
out this hard problem, we'll just add a BPF hook and let the users find
a solution for themselves".  The line between providing a useful means
for expert users to optimize their systems and skipping out on our own
duty to optimize things is not always clear, at least to me.

jon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
