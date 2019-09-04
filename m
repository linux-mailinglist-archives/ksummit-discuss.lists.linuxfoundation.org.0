Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5DAA83EE
	for <lists@lfdr.de>; Wed,  4 Sep 2019 15:47:57 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 51CF316FD;
	Wed,  4 Sep 2019 13:47:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 60FF3145E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Sep 2019 13:47:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DD280887
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  4 Sep 2019 13:47:09 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id x134so9467207qkb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 04 Sep 2019 06:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=dYGfT8fDJumQBF4AGTRnbAlfF/Il44uNvH+2gMWPiBU=;
	b=VPdlH2eyGA3ng0ikpiou/TyPNTDExGQQuGnrY3aaPAn672raLgzS6Kr9YeA4F83KRA
	14nOAcz3dWIp92FoskLi6XLQzgNOyLefW1tTu3swTXIwMc3z0sL8zXrkBoOil6qQySLW
	zvrzDNsdLJTpszrrA7zGA8mF7bAzjA7IcfADk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=dYGfT8fDJumQBF4AGTRnbAlfF/Il44uNvH+2gMWPiBU=;
	b=hAwcL0akSSRJhlL3f7dmzd1xAn6vJ1v9TMuxAM1Dke56KKFmkE/WwuLkr5Z9btdhmj
	AKMWdVVDTsB63FgUO/xd0OA32goTKAMnDv6z/UIkhA6/xoyh3bSwXYieWl7JAQc+1yn7
	/CJtpgA7S18z81VAgH3SKiCR4O1+C8jlxfUwwbTluuGPRmKgMO8C9USw25in9AvrERMz
	GgAsR1t6g+qR4K/5d0ei60Motn54W6z8cO8+0uBZN8y4HJDN4QU7chi8E6yDuCA8/Tjy
	C0V9xZ5+aknJJCDeEC+GAuB93yZ5JQyvucwrEfgcSo7/c7GuQu1tNPD1Guyw1ndSIFfR
	b3Iw==
X-Gm-Message-State: APjAAAXzw0AvQUOwL2to6NFUI5z0o3Ef0UmKjvE5BGbU/QLwMfp15ctn
	o2j6442AovKcixftFyf5pj9roplE
X-Google-Smtp-Source: APXvYqxRBTx7I6wRN3BEAtzlN8mJiuM7TfSjpqddHNtTlgRuXVt808MOA7Fp6PwhUneXLr3VI5sUDA==
X-Received: by 2002:a05:620a:1193:: with SMTP id
	b19mr32894333qkk.413.1567604828984; 
	Wed, 04 Sep 2019 06:47:08 -0700 (PDT)
Received: from pure.paranoia.local ([87.101.92.157])
	by smtp.gmail.com with ESMTPSA id
	139sm6504202qkf.14.2019.09.04.06.47.07
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 04 Sep 2019 06:47:08 -0700 (PDT)
Date: Wed, 4 Sep 2019 09:47:06 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20190904134706.GA14421@pure.paranoia.local>
Mail-Followup-To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Laura Abbott <labbott@redhat.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904120843.GD4811@pendragon.ideasonboard.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Sep 04, 2019 at 03:08:43PM +0300, Laurent Pinchart wrote:
> > - Just like Patchwork, it would keep track of new patches and series of 
> >   patches, recognize when new patch/series revisions are posted, track 
> >   reviewed-by's, tested-by's, etc, and provide useful maintainer 
> >   functionality, such as showing interdiffs between revisions.
> 
> I've been thinking about this for about a year now. One issue that makes
> this difficult is that many M[UTD]A software mangle e-mails in a way
> that make extracting information automatically pretty painful. Google's
> answer to this was Gerrit, which solved this particular issue, but
> disrupted the e-mail-based workflow in a way that is not acceptable to
> many developers (myself included). A better, in my opinion, solution
> would have been standardisation of a format to exchange review
> information. Quite obviously going for a markup language (be it XML,
> json, yaml or whatever is hype today) is a no-go, given that we would
> destroy everybody's workflow again. My idea was to use a review format
> that is as close to e-mail as possible (with > quote markers and
> everything that people are already familiar with). Of course M[UTD]A
> software would still mangle it, but given reasonable M[TD]As, I think we
> could teach some of the MUAs commonly used (mutt comes to mind) to
> behave properly (through plugins, scripts, settings files, ...). E-mails
> that would not be mangled through the process would be easily parsable
> by the tool you would like to develop. That would not give us full
> coverage, but if we manage to establish such an end-to-end solution, we
> could then push it to more MUAs. This would allow to tackle this complex
> problem one step at a time, while not alienating developers by asking
> them to leave their MUA. Over time we could the develop more tooling
> around that review exchange format, once a large enough portion of
> exchanged reviews will follow it.

One way to prevent mail software from mangling message bodies is to send
them as multipart/signed -- at least most MTA/MDAs know not to touch
those. I know git-am handles multipart/signed patches just fine (though
it just ignores signatures), and most gui MUAs just shrug the signatures
off by showing them as useless attachments.

Doesn't help much for cases where people use their own MUAs to send
patches, but at least we can prevent the transmission/display parts of
the equation from messing with structured mail content.

(Of course, in my beautiful vision of the future we aren't using
mail clients at all any more, but let's leave that topic on the
sci-fi/fantasy shelf for now.)

> I'd say it sounds too good to be true. Being often on the move I would
> love a tool that would let me work offline. Even when online, being able
> to run queries locally and script actions without the need for a web
> browser interface would be amazing.

It is quite literally too good to be true, because this tool does not
exist. ;) However, having this feedback will hopefully help me make the
case for coming up with some funds to get things going.

Best regards,
-K

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
