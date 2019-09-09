Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0078AAD774
	for <lists@lfdr.de>; Mon,  9 Sep 2019 12:59:59 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EE2FBEA3;
	Mon,  9 Sep 2019 10:59:42 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E722E8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:59:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3B4367DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:59:39 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 21so11958954otj.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 09 Sep 2019 03:59:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iICUvJg1gYzdHj8TfIDSqAyTM0cKGeDQNw++xFCWgZY=;
	b=b+1i5By8bNlbyTwXgQhm8GpXjQniiDsXXVZxobN95AdI3ixduOiU76Xl3FrWYK6qNw
	yY6YYUT/fuEwaxdW2V+8UjHNiQiMVkppPIBKe4d0i57B6Z+yJN7hYlZPQEy95PCvZADy
	GWFRAVtpLBUDaspxzJsffY4JuFKQN7wGhmYD3xL/kVb+x4OGQ4v4Yd5mzekn40iuOzby
	oBjeSSNKYen28WC+LO032s33PyEpbtIG2xP6oPHE/aT/wvChP3cuzGHg6PBraY/Z05R7
	UyjDJSSnwOo7w3kvvlaeOpCDmwPG8k8mGzvIH7NOWiG6sfFKeVhxBQoCJHHGNs61X0ew
	ZlAQ==
X-Gm-Message-State: APjAAAVlj+TxJL8PHzhEI0dxDdjdsUtKrnJO9S+5enioxisidnnNtgA/
	SU7i9g8NYaTAUyEoVh6qZ419iRxnJLCLkeHN0ZU=
X-Google-Smtp-Source: APXvYqyKvcd3ewslEgwbkk1OOSq16v42lVllpNPIqmK7eg83EqSDsLlFL4MWs3HlAv/mbVz/hXyY7IfYETYMzi9krFw=
X-Received: by 2002:a05:6830:1196:: with SMTP id
	u22mr19364753otq.39.1568026778416; 
	Mon, 09 Sep 2019 03:59:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local> <87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
	<CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
	<87imq1x3q2.fsf@intel.com>
	<CAMuHMdXVJuRv1n1zvmVUYOj_DCkYu-n3mub9rSdePf6M1nEObw@mail.gmail.com>
	<20190909101606.GB9452@pure.paranoia.local>
In-Reply-To: <20190909101606.GB9452@pure.paranoia.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Sep 2019 12:59:26 +0200
Message-ID: <CAMuHMdXxcJhNqPZBpf4QHpECN=aDXe7uYv3F2S4re04YaRUypA@mail.gmail.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

Hi Konstantin,

On Mon, Sep 9, 2019 at 12:16 PM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> On Mon, Sep 09, 2019 at 11:49:48AM +0200, Geert Uytterhoeven wrote:
> > > We can still have the review on emailed patches, and we could still use
> > > git am to apply patches from email, with better reliability if the
> > > sending was done by a service in, say, kernel.org control. Though if we
> > > had the series automatically available in a branch, I'd think people
> > > would move over to picking up the commits from git. And email would only
> > > be used for communication, not data transfer.
> >
> > Do we trust the branch to contain the exact same commits as the
> > patches reviewed on the mailing list?
> > For an automatic service on kernel.org, we could.
>
> But we really shouldn't, considering kernel.org is the exact kind of
> target that attackers would go after if it was implicitly trusted by

Sure.

> developers. Once patches have been reviewed by maintainers and merged
> into their tree, we should be using cryptographic attestation for all
> git-centric operations after that -- regardless of whether you pulled
> from kernel.org or any other location.

We already use cryptographic attestations for the later operations.

So the weakest link seems to be the step between public review and
import into git by the maintainer.  E.g.
  - The review chain on multiple submissions: Vn+1 may contain an evil
     change that was not in Vn.  As this happens in public, it may be
     noticed by reviewers.
  - The path between patch submission and git-am:  if a patchwork
    instance is compromised, evil changes may sneak in.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
