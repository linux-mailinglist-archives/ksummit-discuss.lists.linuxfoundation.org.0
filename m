Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 793C6AB5B6
	for <lists@lfdr.de>; Fri,  6 Sep 2019 12:22:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C661D1EB1;
	Fri,  6 Sep 2019 10:21:42 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3AF5B1EA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 10:21:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9472E7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 10:21:39 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id z67so5039213qkb.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 06 Sep 2019 03:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hbNovBRATVLW7JIBvPghLqeUYYEKhUDCGGipbAqeMWw=;
	b=ozFgqNYWT7hzjS9dehi1RmCGvwW9dsoP86xLxOv8fzAL1uQU9g5IBRC6qPq3B8k9eo
	G7ldmYNGFDylcBkuWbu40QBdxjyJvldzfMRjNQ5gPkElUF+ib/Kj0Y4JYPi6VerXygb/
	GHDsBYUrFhITPiZ+kdhvShmPEhZJqUK2f9+t0qhiUxfnLmcFIanKB1UOtyZZ9vvlJ46o
	7qrfMXVzBj2F4gu2GE05hjH8USDsFXjroqSw4TzgbKOUt7UzRsppFhK5Cme+RP4NWMvm
	SHMa/vsnPGg9fC5QqlEzf47DFCZlUTSr33jKc3OxCvHw04DUS3gvJ7BVeeiHZaj/wch2
	tajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hbNovBRATVLW7JIBvPghLqeUYYEKhUDCGGipbAqeMWw=;
	b=LhAnBtavUizILEEzFjUStnjyec3D/A5tnqy8nZfxcSjSjonGDwzE+WBEGYCt/DetwN
	vRrtbcz50bsWsMkCvYV9TlGb3CAfBQZgkveO3DmlBw48nlL/cAN8SmveUucNiZ2rotgd
	IppBwqRouSajbnOwPpYlcD7m5m40Fo3l+h7CIeVY4eKN6QoOVBa07rK1mv5PCErwj1D+
	cFqL2ZbLFGe9KLCssNMzgHysDP8bq3i1TZHg9fhGX+oxzvzhbJOYHeQDJOI+HZAHBuBG
	w8JJCyMqmwQ2/dvE0p0BMVcGAVv3H94R4f4PhtCMYOOW1CwTQ3GC0VRSellmTkJFtmJ5
	Eurg==
X-Gm-Message-State: APjAAAXHLOVPWSc5PRv8+xPHJBbwAcA+p9u74sjITE+zzJ4ECpGtI2YW
	5gXtLGwFcFZIvEOchHhX8+GB9+z7vkzoiUOD6Q==
X-Google-Smtp-Source: APXvYqwWj04dfI2MCiuVX1ecl0RyW6wrYpp5i/S01PxrbVcR1bO2gfbkOgeAlab+ThcW1QwP9burt7sFrtK1i1yZQL4=
X-Received: by 2002:a37:a48e:: with SMTP id n136mr7972434qke.223.1567765298495;
	Fri, 06 Sep 2019 03:21:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<CABhMZUUzyMXyKthjt31qU-p-2=6s2Cvw5jb=bw3=T76kzfUyKA@mail.gmail.com>
In-Reply-To: <CABhMZUUzyMXyKthjt31qU-p-2=6s2Cvw5jb=bw3=T76kzfUyKA@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
Date: Fri, 6 Sep 2019 11:21:25 +0100
Message-ID: <CAL_JsqJTpA68gAkT2k5ziHF8RbVsmKcf2ZLTGSexPkrwL6Vkzg@mail.gmail.com>
To: bjorn@helgaas.com
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, Sep 3, 2019 at 6:40 PM Bjorn Helgaas <bjorn.helgaas@gmail.com> wrote:
>
> On Tue, Sep 3, 2019 at 12:27 PM Konstantin Ryabitsev
> <konstantin@linuxfoundation.org> wrote:
>
> > For quite some time now I've been trying to fund some client-side
> > tooling development around public-inbox (the software that drives
> > lore.kernel.org). Eric Wong (the principal author of public-inbox), and
> > I have had lengthy chats about potential functionality of such tool, and
> > what we envision can be described as "local patchwork with a mutt-like
> > interface":
> >
> > - It would use public-inbox repositories to track new patches and
> >   conversations, so it would no longer be necessary to subscribe to the
> >   actual mailing list(s). Getting new mail would be equivalent to a "git
> >   pull".
> > - It would have an equivalent of notmuch search, so instead of needing
> >   to go to lore.kernel.org, you could search the entire mailing list
> >   locally and perform actions on the results found.
> > - Just like Patchwork, it would keep track of new patches and series of
> >   patches, recognize when new patch/series revisions are posted, track
> >   reviewed-by's, tested-by's, etc, and provide useful maintainer
> >   functionality, such as showing interdiffs between revisions.
> > - Patches and series can be pre-filtered by keywords or file paths (e.g.
> >   if you're only interested in arch/arm64/mm/.*, the tool would ignore
> >   any patches/revisions not touching files in that dir).
> > - It would support creating workflows and conditional response actions,
> >   e.g. "create new branch, apply this series, run these test suites; if
> >   tests succeed, merge into branch `for-linus`; if merge successful,
> >   reply to submitter with 'thanks, applied!'; if all went well, archive
> >   the series; if any steps failed, flag the series for my review".
> > - The workflows would run in the background, including using external
> >   systems if preferred. Maintainers can contribute their workflows to a
> >   shared repository so others can easily copy and adapt them.
> >
> > That's obviously not a complete list, but it seems to me that something
> > like this would be quite welcome by a lot of maintainers (at least,
> > everyone I've talked to about this got really excited). Eric Wong is
> > quite willing to work on something like this, but he is not in a
> > position to donate so much of his time and effort (especially on top of
> > maintaining public-inbox) -- so if we want to see this happen, we need
> > to come up with some funds.
> >
> > I've inquired internally at the Foundation, and while there's general
> > willingness to fund such initiatives, the People In Charge Of Money want
> > to see a buy-in from maintainers. The natural instinct is to talk to
> > Greg, but I believe he's quite happy with his workflow, so while I'm
> > sure he'd be happy to feign excitement, he's unlikely to be interested
> > in the tool. Linus is not the right person to talk to either, because he
> > doesn't deal with patches and tests, so wouldn't benefit from such tool.
> >
> > So, my plan was to track down Shuah (who's also at the Foundation) and
> > Laura (who is on the TAB) at the upcoming summit to float this idea with
> > them to see what they think. However, since we're talking about
> > lore.kernel.org, tooling and workflows quite a bit already, I figured
> > I'll bring this up here as well.
> >
> > It just seems that every maintainer I spoke with is generally making
> > things "sort-of work well enough" by applying a lot of baling wire
> > around mail clients, patchwork.kernel.org, gitlab, or all of the above,
> > and I'm wondering if everyone is happy to do that, or only doing that
> > because a good tool written to fit with the "kernel development model"
> > doesn't exist.
> >
> > So:
> >
> > - would a tool with such functionality be useful, or would every
> >   maintainer prefer to continue doing their own thing (in slightly
> >   different ways)?
>
> I would find something like this incredibly useful.  I currently use
> patchwork, but I am really sick of the only-when-online, mouse-around,
> clickety-click, wait-for-the-web model.

You might like my set of bailing wire using patchwork and mutt. It
works offline if you download the patchwork state beforehand and
queues up state changes. The basic flow is:

Load the "New" list from PW (my PW instance is pre-filtered on paths,
so I don't have to sort thru everything on the DT list)
Check for multiple versions of patches, auto email on failure to add
my review tag, check for already applied (to next).
Iterate thru the patch list:
  - Run checkpatch.pl
  - open mutt for each patch. Mutt has the full DT list, so I can look
at the rest of the series if I want.
  - After exiting mutt, prompt for PW state change
  - Possibly apply it
  - Generate replies for applied, reviewed-by or acked-by

Happy to demo it at LPC if you are interested. You can find it
here[1]. The main script is pw-review.

Of course I would happily switch to something else like this proposal
if it shrinks the scripts I have to maintain. Especially for
generating quoted email replies as dealing with mime, utf-8, base64,
quoted printable is "fun".

Rob

[1] https://gitlab.com/robherring/pw-utils
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
