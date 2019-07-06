Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B14126124A
	for <lists@lfdr.de>; Sat,  6 Jul 2019 19:00:07 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A81DD1DD3;
	Sat,  6 Jul 2019 16:59:55 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C3D651DBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 16:52:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C701B70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 16:52:33 +0000 (UTC)
Received: from localhost (unknown [37.142.3.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A0DAB206A2;
	Sat,  6 Jul 2019 16:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562431953;
	bh=1TRkEi2DQbPrrgmktg9RyMV3nHT8fv+cCqjjdzaH7ZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NLODGh8F8D+F4jw0hw3vZmKhUTw08cSHXkXRLnfH5pXXkxEXlMOg6ZOY72/AYLMb+
	6CG4Til2ZJ92o8amLJ+uYxyPcqII52ob+z2t5U3pw1gKZu2bEeXZWKMXy1ZgOHrhwf
	XQNuAMCiFD0b5rQYryzsRTrasn7gQB7T/W97xpKM=
Date: Sat, 6 Jul 2019 19:52:14 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190706165214.GB18182@mtr-leonro.mtl.com>
References: <20190706142738.GA6893@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706142738.GA6893@kunai>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
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

On Sat, Jul 06, 2019 at 04:27:38PM +0200, Wolfram Sang wrote:
>
> In the parts of the Kernel I work with, reviews are usually given by a plain
> tag. I think this is not enough to keep a good code quality, so I'll start with
> my theses first:
>
> 1) we need a better distinction between Acked-by: and Reviewed-by: and encourage
>    stricter use of that

Agree

>
> 2) Reviewed-by should have a description of the review done (and the review not
>    done)

IMHO, this path of thinking will lead us to less reviews due to an extra
work and wouldn't bring an extra quality which we want.

Right now, everything is built on trust and it will continue to be after
we will demand to add extra sentence. It means that we don't fully trust
in Reviewed-by of one time contributors now and we won't trust in their
description of their Reviewed-by either.

Thanks
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
