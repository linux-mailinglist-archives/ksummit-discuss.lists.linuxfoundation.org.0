Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 073BEA719F
	for <lists@lfdr.de>; Tue,  3 Sep 2019 19:27:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5552EE40;
	Tue,  3 Sep 2019 17:27:15 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 05C17CCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 17:27:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6EC4C709
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 17:27:12 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id j10so3237973qtp.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Sep 2019 10:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=+SBZrCjgy2C0JQh7cbXpwcxe93udbWjE54o6blDwsO0=;
	b=NGG5j41jj+0tWvjl5R0fUacJTF4EyrljAfWICmeNYcuf+63DCKBOAzbCkku84eSWIs
	BwaLAR4mPceUHEUk5Xer2Fr+E55BJ7HAnjyFlvdPQZzX6JOMg9XmE7Gi7O0ysmp/mwQC
	osa+eMg7FlP0lgSzBSUa1BUepxor+Q+aZ+poc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=+SBZrCjgy2C0JQh7cbXpwcxe93udbWjE54o6blDwsO0=;
	b=NTuP61Z97nn2oifYyfpjcDlbZueebJqq4FTSVs5xw8PTXGnsiet7iauTBbK3FWUaMk
	1k+mnY0kldrGEcE/Fg6jKElDCsfe0cuz9SAwFDAJtB0GM1EsZm8UGm6VCTcBENybXB7z
	8KKziYDda/c13Je8ZAdtwt9N3M/o/osP9+L0cAjpCLA+M2h3BCRZnzskepg4uYkd1BnI
	5ywoaLagF/OZRvfRQtLSpp1s0sRbeKX2BzrHHL1onInQUQLHpdT9VfRPrKSOBAI/cCM4
	+cG5JDbQql6VhJe05vtyYcTu53cpZ1laxUKV4hC34G+DYzqLVU8S4hnoTvXtBuT/vYSS
	8SZQ==
X-Gm-Message-State: APjAAAWaKkaSROj66z+8l/u3bevx6mD7l6xaD/LhEXquMU8D/0Wt6w+g
	PfEis0Ns0ZkIxWl6At1FDPHApAgX
X-Google-Smtp-Source: APXvYqzACH+Ey1wMQaa+A/B+Q8moLeMZVEtfriCvyKW/wv3lgKKzMh//GjEFgJh/Q2SQMDTjd1DoTA==
X-Received: by 2002:ac8:2d09:: with SMTP id n9mr10896671qta.10.1567531631496; 
	Tue, 03 Sep 2019 10:27:11 -0700 (PDT)
Received: from chatter.i7.local (192-0-228-88.cpe.teksavvy.com. [192.0.228.88])
	by smtp.gmail.com with ESMTPSA id h9sm1380169qke.12.2019.09.03.10.27.10
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 03 Sep 2019 10:27:10 -0700 (PDT)
Date: Tue, 3 Sep 2019 13:27:08 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
Mail-Followup-To: Linus Torvalds <torvalds@linux-foundation.org>,
	Laura Abbott <labbott@redhat.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, Sep 03, 2019 at 09:07:00AM -0700, Linus Torvalds wrote:
>I think some of the push-back to the GPU people wasn't from them not
>inventing the group maintainership like Dave said, but from that being
>presented as some kind of "this is the way to do it". When it's just
>_one_ way to do it, and other groups have completely different
>infrastructure and models..
>
>So I don't think we can force some workflows.

For quite some time now I've been trying to fund some client-side 
tooling development around public-inbox (the software that drives 
lore.kernel.org). Eric Wong (the principal author of public-inbox), and 
I have had lengthy chats about potential functionality of such tool, and 
what we envision can be described as "local patchwork with a mutt-like 
interface":

- It would use public-inbox repositories to track new patches and 
  conversations, so it would no longer be necessary to subscribe to the 
  actual mailing list(s). Getting new mail would be equivalent to a "git 
  pull".
- It would have an equivalent of notmuch search, so instead of needing 
  to go to lore.kernel.org, you could search the entire mailing list 
  locally and perform actions on the results found.
- Just like Patchwork, it would keep track of new patches and series of 
  patches, recognize when new patch/series revisions are posted, track 
  reviewed-by's, tested-by's, etc, and provide useful maintainer 
  functionality, such as showing interdiffs between revisions.
- Patches and series can be pre-filtered by keywords or file paths (e.g.  
  if you're only interested in arch/arm64/mm/.*, the tool would ignore 
  any patches/revisions not touching files in that dir).
- It would support creating workflows and conditional response actions, 
  e.g. "create new branch, apply this series, run these test suites; if 
  tests succeed, merge into branch `for-linus`; if merge successful, 
  reply to submitter with 'thanks, applied!'; if all went well, archive 
  the series; if any steps failed, flag the series for my review".
- The workflows would run in the background, including using external 
  systems if preferred. Maintainers can contribute their workflows to a 
  shared repository so others can easily copy and adapt them.

That's obviously not a complete list, but it seems to me that something 
like this would be quite welcome by a lot of maintainers (at least,
everyone I've talked to about this got really excited). Eric Wong is 
quite willing to work on something like this, but he is not in a 
position to donate so much of his time and effort (especially on top of 
maintaining public-inbox) -- so if we want to see this happen, we need 
to come up with some funds.

I've inquired internally at the Foundation, and while there's general 
willingness to fund such initiatives, the People In Charge Of Money want 
to see a buy-in from maintainers. The natural instinct is to talk to 
Greg, but I believe he's quite happy with his workflow, so while I'm 
sure he'd be happy to feign excitement, he's unlikely to be interested 
in the tool. Linus is not the right person to talk to either, because he 
doesn't deal with patches and tests, so wouldn't benefit from such tool.

So, my plan was to track down Shuah (who's also at the Foundation) and 
Laura (who is on the TAB) at the upcoming summit to float this idea with 
them to see what they think. However, since we're talking about 
lore.kernel.org, tooling and workflows quite a bit already, I figured 
I'll bring this up here as well.

It just seems that every maintainer I spoke with is generally making 
things "sort-of work well enough" by applying a lot of baling wire 
around mail clients, patchwork.kernel.org, gitlab, or all of the above, 
and I'm wondering if everyone is happy to do that, or only doing that 
because a good tool written to fit with the "kernel development model" 
doesn't exist.

So:

- would a tool with such functionality be useful, or would every 
  maintainer prefer to continue doing their own thing (in slightly 
  different ways)?
- would you (or your employer entity) be willing to participate in a 
  fundraiser to help fund the development of such tool (in case we 
  cannot get the LF to fully fund it)?
- would it be okay if the tool is written in NPM/javascript?

Okay, just kidding about the NPM bit. ;)

-K

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
