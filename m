Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAC162B2F
	for <lists@lfdr.de>; Mon,  8 Jul 2019 23:40:44 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DCE162BF2;
	Mon,  8 Jul 2019 21:40:35 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 391BD26D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 21:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8817826
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 21:31:52 +0000 (UTC)
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E7A642166E;
	Mon,  8 Jul 2019 21:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562621512;
	bh=IhM0R62kNHSao4jDh/7XZpmEZVAmF+RQ/vlch2NrxzE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=CHcyh3ihbVhYR1CVl/EvIErv45I5xiDPKgcgpo2ToDVe5y59YSbw09UAfMeeEiLEA
	aNWcvC96qJ33paKGKh+B+NXG8hCLoCmGLxOizQUN+GaIGki/BtEf9VmK0Z+iIJ+PQa
	UWwz/Mj6ZNXeZUxGclZDq6lX2mzR9s5FbjCDbRKw=
Date: Mon, 8 Jul 2019 23:31:45 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20190708151040.GB1548@kroah.com>
Message-ID: <nycvar.YFH.7.76.1907082324440.5899@cbobk.fhfr.pm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<s5h7e8swq87.wl-tiwai@suse.de> <20190708151040.GB1548@kroah.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
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

On Mon, 8 Jul 2019, Greg KH wrote:

> Well, I think the conversation will go just like it has in the past for
> this issue:
> 	"We need to have someone track regressions!"
> 	"X said they would do it but they need to be paid, any company
> 	willing to sponsor this?"
> 	{crickets}

SUSE has actually been funding this for quite some time (back when Rafael 
was doing it), but it's really tricky.

We of course realize it's very important long-term activity, from which 
everybody profits.

At the same time, you need somebody who *really deeply* understands 
everything inside and around the kernel development, otherwise you get 
more harm and chaos than added value out of the whole excercise.

And if you have such a person (like we had Rafael), it's unlikely that 
person would want to do that work forever, and the funding company is also 
losing brainpower in other, more development-related areas (like PM in 
Rafael's case) at the same time.

So it's not as simple as "hey, you, company making money on linux, go pay 
someone to do this".

If I remember correctly (Rafael for sure would remember better), there 
were some attempts to have the regression tracking made by someone much 
more juniorish, but that person got of course immediately overwhelmed.

Thanks,

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
