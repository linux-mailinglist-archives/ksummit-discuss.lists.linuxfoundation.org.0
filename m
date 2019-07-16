Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EC76B16E
	for <lists@lfdr.de>; Tue, 16 Jul 2019 23:58:15 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 06E9CED2;
	Tue, 16 Jul 2019 21:58:04 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8A1D1BE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 21:58:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E9CE63D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 21:58:00 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id m24so42545536ioo.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 14:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lixom-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DZS/6wFNJ0OXvW04V3v9vkgSpHxKRox4oKPRl2Jyrt0=;
	b=WtV86m6ZgY9XjkOH4SLeZEfceg/z0n0WmfksRd5o3p1Lz1V7dJdWiMzuCSW/A5qG97
	xGS0xa/WUOSEGuHpmUWoaqAzac2ryMpzCW2/6jhvmqGeIeM1eDTLsHIYJvqRXTlXaMw8
	NAd7w8BvdNChogkPXgDnj2vO5l+Oghq2axLqvLHzxvjyQ84yD3Q9RXDIspIqJuRsnSep
	o5jox2y7gcSQo+C6zUfg/bksBQQBZDRjarJnf5davUC8c7y96oY/fBTQ8Xx9ilVNoDnZ
	4WcNcHRAVuP3GfLIGSsNbTe7xtl4/NDg4FZEickycGdbGsax836epXng5IQrHaM6KqRv
	NUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DZS/6wFNJ0OXvW04V3v9vkgSpHxKRox4oKPRl2Jyrt0=;
	b=ZL3Wz4Ft95LkXbknvbj0eS6f/Ilu7UdLhqIkQ5qcsqtT17ienhwzhdbyNAOBeK8Cbr
	qPj5SuzSz903UqQCZFCgOsSE1XL8DKN0K4apWpKGc1VISnEP4qKtwuBngP9pseuLtsx2
	H3Cv5+w0CZ3ct7quBoNGPF0xbZcomtTEQF+Kkn5Xm6/2olYw5K9slS+4NefFLO4VYRdi
	Q1b/RgiKmDCIPw/OvK1QTtCFuk7D7DOGUuq0tIG6Vt+clMeN0CiLNATT/ANStWpoDQcC
	ULHzS41T2tSJy9J8vzF1VpSVTv0qCLWYD3OerdHh3IXpM127qAaeFkj8Kq4q13+CI1sx
	eVJg==
X-Gm-Message-State: APjAAAUp/1DuH6tk9E4HN7n8Q4k4qaHNr3x6UBTH6ac0T9R3b4/eVhox
	ilnSgHpgqbTdp5Mnth2oc+oque+ius/dnLrzqg9AU0uVMXM=
X-Google-Smtp-Source: APXvYqyIauruBjvLYVx1U2SeWWGmYCMXYnU2YlY87eC05z884noaC0mqaaec3LlcRXGzY5KhoeS5FklgYCOFoWV8KhQ=
X-Received: by 2002:a5e:8a46:: with SMTP id o6mr2747970iom.36.1563314279769;
	Tue, 16 Jul 2019 14:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
	<alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
	<20190716211636.GA6679@kunai>
In-Reply-To: <20190716211636.GA6679@kunai>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 16 Jul 2019 14:57:48 -0700
Message-ID: <CAOesGMgaw3Xq4gCkSsyHW_n8ETkpSKwe5f_oBsz_+s3c+XsnTA@mail.gmail.com>
To: Wolfram Sang <wsa@the-dreams.de>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Tue, Jul 16, 2019 at 2:16 PM Wolfram Sang <wsa@the-dreams.de> wrote:
>
>
> > Even if we agree on a set of new tags the usage will still be based on
> > individual interpretation, which brings us back to square one.
>
> I agree. New tags won't help us much.
>
> > So no, let's just accept that these things are subjective and apply common
> > sense to make the best use of them.
>
> I meanwhile do think, though, that for "best use" it will be helpful to
> add my Rev-by to my SoB when I really did a full review (and not just
> trusted other reviewers). To properly document the process of a patch.

I don't see how this is bringing much value. You picked up the patch,
and if you did so without looking closely at it, the end result is the
same: You're likely to be on the line for dealing with issues.

The only thing a "S-o-b" without "R-b" would bring is "It's not my
fault that stuff broke" -- but it still is since your name is on it,
and that's not something that adds value for the project as a whole.


-Olof
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
