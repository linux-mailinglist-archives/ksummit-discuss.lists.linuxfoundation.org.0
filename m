Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 14866A7262
	for <lists@lfdr.de>; Tue,  3 Sep 2019 20:15:19 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F1F86E7F;
	Tue,  3 Sep 2019 18:15:00 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A60EE7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 18:14:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D491756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 18:14:58 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id w6so1004319oie.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Sep 2019 11:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=yyDnz1fh5oww3jh+7UE1pnOq2qltveu1oQtSjEuorOU=;
	b=JRoImMxceH/TMytaTX3fU6Ji+EyDtsHEHMtPr4W6KqgGM9+OvP+umaV1EPze2Vzftt
	8peAbdjgILrEXKLdGVoVmX43xmPrTuFMzmaoVKQi6wIZdQjNF/+FZuwu5rdW40jYV7ul
	hVHZ+ymVN1brYLw8Yo4cJnD2a2QpiScolfMcCQyV2vkEbMk3DDQqpl3+fJ474WvGDe7R
	VlFAhhAXZqV4KEjo8RdHl3x/Icb0KRQHd78CD4deCaGjKmpD0qBk/nNb0+9qoTfm+qnM
	dGqXuEOovo6l9UhfZ9jQaHOUO18vPsnLNEK0dmM9EJ6CYKEZdIJixvzElwStyEPFxx10
	M4yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=yyDnz1fh5oww3jh+7UE1pnOq2qltveu1oQtSjEuorOU=;
	b=Ek5ZwBzBLqXC1AWMn96PKiTIWWwMM+246sSIJdnSLEo/drA+Gme28yIEBk9KQf6pFC
	sv/MGHnIxsNrc/q7zmEzuCF+oqzdKyA5V6Qq7hfJ62p0rP2V/TcNrCc3Rz6J9NW7hqg7
	YXTZRdMvLL40WpTyib36+z+wCQCsSmnixPmsjIQQq50BxgEEfOokPWJnJ6GG2oZIDLYk
	HV/2Ar0XURQMGZsM/WfXjZbSut54z/dds8rxDMFbjbskz4RA8i7G3EVDsEdSWtFW1oB6
	4ljfuQHncCG2HAGqRHSsovJQRr+jTtYImVOobChJWXxCLQ+DDC6ITqUyIuZuul+X6c25
	4Aqw==
X-Gm-Message-State: APjAAAWPgoVvSE6flvyFTfedXPeRDRkkd78wBnLGcNekl0tuORKc7Ty6
	8aoLaoPnG1mYrc3rkUsVXLL3NLALvu447HXnoCg+6g==
X-Google-Smtp-Source: APXvYqyOetb3y7tt0Yiq2d0Jks06fi5lwIA7fNYtvHLsBhYYnDC9SPWlVUhWfx0/1WAdz7uUclaKPK/WSj6tiLOCb3k=
X-Received: by 2002:aca:d707:: with SMTP id o7mr451092oig.105.1567534497673;
	Tue, 03 Sep 2019 11:14:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
In-Reply-To: <20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 3 Sep 2019 11:14:46 -0700
Message-ID: <CAPcyv4gMAMG6ejwjyzVahE0hGLyf7Rcq+7QZ-SzYsvFW65YdVA@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Laura Abbott <labbott@redhat.com>, Bjorn Helgaas <helgaas@kernel.org>, 
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
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

On Tue, Sep 3, 2019 at 10:27 AM Konstantin Ryabitsev
<konstantin@linuxfoundation.org>
[..]
> So:
>
> - would a tool with such functionality be useful, or would every
>   maintainer prefer to continue doing their own thing (in slightly
>   different ways)?

Yes, I would consider switching to this. The kernel.org patchwork-bot
+ the getpatchwork tool [1] does some of this for me, but lossless
patch reception, sharing rules and triggers for patches (not  just
git-hooks) is a powerful superset.

[1]: https://github.com/getpatchwork/git-pw
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
