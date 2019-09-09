Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B11FAD689
	for <lists@lfdr.de>; Mon,  9 Sep 2019 12:16:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7F5F7E8D;
	Mon,  9 Sep 2019 10:16:14 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97353E7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:16:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4CE9376F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:16:12 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id d25so27353017iob.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 09 Sep 2019 03:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=R0HAs2O3vv222yV5JJGgw0cG8Oflq+i1vLuRdT5hL0o=;
	b=Zox7/Mwmb/P2fwmcO6JvAkyUccPOwd1/juKRigQMk8Xf4yLdnTnr57b8OQ4WVcJmLu
	8IFkL+yjBTiVDs0Fhejy5gJ4Nvb8AzfV7UZJfOPFCu2HGzcj02o3hdI2saWUpjQ0uJbm
	bzb9qMkO6uippyIQWyE2jLN3Y6qGwdwwtOD+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=R0HAs2O3vv222yV5JJGgw0cG8Oflq+i1vLuRdT5hL0o=;
	b=dFM63wQZieXy+MujAp6CP8rIwEn4paqoHWMcjF/Zckp5WwGt5WvdxUBmIVBiEOkbTF
	VUhnQXf9gkiEFyFZCOUCGHAgCjvIe4gFhpEdxp1jekESaYZcfb4/R62XXWinu7O0YG2N
	2Xc7ajC9WX7WHejJSGyiBfSTuMy6w214KB6gMcYpVIJnQgXAOWu0DySru9KTe6S8hV+Y
	pCPexnDePxVJCBCd/HQPU+oTJtQ2YC3KOzr1cCB3hF0M3V2GHl+dtrB90lcg7Ogj6ZBb
	0Ac/7eEElFCNIhqigzWDO/Xit50v7KxnQfrPzb8Rd2TTsaPIyyA1QEXOg0Uo56Ccc5Cx
	fzHg==
X-Gm-Message-State: APjAAAXmfN3x8ODQZXmq0PUJRCZ602Z9gqb/dhCfGqn7N5HM+3pQJOQ/
	9UxQ8Q6uxDHBUrBfqmdkXL2bkkmx
X-Google-Smtp-Source: APXvYqygYM9Z/WHX2cKRRCo5YA8x96JlrObPxeU2PyGB0clHamNQ/3V9yVZSpKNE688murRdSw3Riw==
X-Received: by 2002:a5d:87ce:: with SMTP id q14mr12780188ios.248.1568024171591;
	Mon, 09 Sep 2019 03:16:11 -0700 (PDT)
Received: from pure.paranoia.local ([87.101.92.157])
	by smtp.gmail.com with ESMTPSA id
	u10sm15379005ior.81.2019.09.09.03.16.09
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 09 Sep 2019 03:16:11 -0700 (PDT)
Date: Mon, 9 Sep 2019 06:16:06 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190909101606.GB9452@pure.paranoia.local>
Mail-Followup-To: Geert Uytterhoeven <geert@linux-m68k.org>,
	Jani Nikula <jani.nikula@intel.com>,
	Olof Johansson <olof@lixom.net>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Bjorn Helgaas <helgaas@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
References: <CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local>
	<87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
	<CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
	<87imq1x3q2.fsf@intel.com>
	<CAMuHMdXVJuRv1n1zvmVUYOj_DCkYu-n3mub9rSdePf6M1nEObw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXVJuRv1n1zvmVUYOj_DCkYu-n3mub9rSdePf6M1nEObw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
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

On Mon, Sep 09, 2019 at 11:49:48AM +0200, Geert Uytterhoeven wrote:
> > We can still have the review on emailed patches, and we could still use
> > git am to apply patches from email, with better reliability if the
> > sending was done by a service in, say, kernel.org control. Though if we
> > had the series automatically available in a branch, I'd think people
> > would move over to picking up the commits from git. And email would only
> > be used for communication, not data transfer.
> 
> Do we trust the branch to contain the exact same commits as the
> patches reviewed on the mailing list?
> For an automatic service on kernel.org, we could.

But we really shouldn't, considering kernel.org is the exact kind of
target that attackers would go after if it was implicitly trusted by
developers. Once patches have been reviewed by maintainers and merged
into their tree, we should be using cryptographic attestation for all
git-centric operations after that -- regardless of whether you pulled
from kernel.org or any other location.

Kernel.org is just there to simplify the moving of bits and we shouldn't
make it a source of trust.

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
