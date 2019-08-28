Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EC9A01F9
	for <lists@lfdr.de>; Wed, 28 Aug 2019 14:39:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B6EC62EA7;
	Wed, 28 Aug 2019 12:38:59 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B47A2E82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 12:38:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 033FE13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 12:38:45 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id k13so2727179qtm.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 05:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RGm5ggheFTfSyo+W7PAKHcvT+vZvX7j798xnRVRvtlY=;
	b=GX/SN202vShY6iFidM+tmY0oIl/eeAw21+PPmeFsZrbjEB/kfhf72IhoBO9594lgxD
	uxWn2+JNlNyl+AJgRJF5TWi6Byz0/tc+bwE45vEl2ux/V+iPc2HtMKNQzA2I/ACd8lox
	GFfyK7vgjGnGfrs0td7d+8Z7srJ4ka6nDH/2muoiidvSYldBa1rbna1CQFJsIDAelsBS
	wq8kJ+d3jUmOc6h7+x04Gw/iuI+7X9tK6M/zsd9s4bIogCZMZMDkp5NEPyhNggnt2uDc
	Op8gOYSS+ByPCG2prlQhscZTllYTwBW1kogH+eJ1DJIdDwrAOLsYTB1rI2pnd3WMpbnd
	/4+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RGm5ggheFTfSyo+W7PAKHcvT+vZvX7j798xnRVRvtlY=;
	b=kxsCm4AjTCF2y4ycGbh0mte8mVSMTayub2tv5lmije346dIgrTLm5z4J43Fs6rKLGP
	+Z7ayD2zdb+XEgS5m2MtXtqmueFKuAMc/DBBVbNA9VpGfI3uqnRCpZ/cmiuRBUjHegmN
	fO/ckXXt9pEgyDzhD+WC1qCi4atLfWSJUIM0AmRFT014pexyLDjDb/xwoZj+NvAbzMuI
	JsfA1weyRz1qt8CzBynsKUIQ+48XaN0ahtE5Fg/ns7/VQfdT0YrQYlVYwa/kGpGCaRfX
	Wq+uM7nLnq+dat9d/y/YiQ0ktodTivOj9qbPMnEHCnpd8iDoSFNHMU5ENIxEabm8fYaZ
	PcJQ==
X-Gm-Message-State: APjAAAVABWJmGhSwKiT5KGXNgmLQaDu36PPW15HWaRqsZjsM/0U3Cr6e
	nsfffvH1LKU/0JV+vge9x0yp2dG9OzGH7Mn7TYBPVw==
X-Google-Smtp-Source: APXvYqwUapZ/+CBveDSiS1M7Z4xNF2VNnVS9n/ilpXnf53v1JYQoG5duLsCMM7gjXdCZHU/wExsoTchno+UbRp6rqWk=
X-Received: by 2002:ac8:239d:: with SMTP id q29mr3931201qtq.304.1566995924751; 
	Wed, 28 Aug 2019 05:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
In-Reply-To: <20190828090837.GA31704@kroah.com>
Date: Wed, 28 Aug 2019 08:38:33 -0400
Message-ID: <CAJWu+oocs3T8orMNt6AmdVgWONzZg0vD=E8EdvzE9rOi_XatUw@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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
From: Joel Fernandes via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Joel Fernandes <joelaf@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Wed, Aug 28, 2019 at 5:08 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Aug 27, 2019 at 05:34:47PM -0400, Joel Fernandes wrote:
> > On Tue, Aug 27, 2019 at 3:53 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > > On Tue, Aug 27, 2019 at 02:55:28PM -0400, Konstantin Ryabitsev wrote:
> > > > On Tue, 27 Aug 2019 at 11:33, Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:
> > > > > >        Link: https://lkml.kernel.org/$Message-ID
> > > > > >
> > > > > > then you have your UUID tag. The tip bot sends you a reply based on that
> > > > > > tag and I know you got some of them already.
> > > > >
> > > > > I'm using:
> > > > >             Link: https://lore.kernel.org/r/$message-id
> > > > >
> > > > > should we standardize on the lkml one instead as it's shorter?  The lore
> > > > > one handles any message id that is on any mailing list it handles, is
> > > > > the lkml one the same?
> > > >
> > > > It's the exact same system and the /r/ is always required. I prefer
> > > > lore.kernel.org because it doesn't imply that the message is going to
> > > > be on the LKML (i.e. it can be on a list that isn't even hosted on
> > > > vger.kernel.org).
> > > >
> > > > So, my recommendation is Link: https://lore.kernel.org/r/$message-id
> > >
> > > Great, will stick with that one, thanks.
> >
> > I am thinking of how to make this automagic and useful for me. My plan
> > is (and ymmv):
> >
> > When I write a patch, have a git hook generate  "Message-Id" in my
> > patch changelog itself when it is written using Greg/Andrew's
> > make_message_id. This Message-Id is not the final message-id and is
> > just for reference purposes for later processing. Then when sending
> > it, after git format-patch I will do a few things:
> >   (a) Consult the archive to check the highest value of N for which
> > Message-Id-<N> does not exist
> >   (b) Add Message-Id: Message-Id-<N> to the patch header so git
> > send-email uses this as the Message-Id-<N>
> >   (c) Add this Message-Id-<N> as a Link: to the changelog;  Possibly
> > removing Message-Id<N-1> link.
> >   (d) Remove the original "Message-Id" without the -<N> from the
> > changelog since it has no purpose.
> >   (e) Send the patch
>
> Wow, what an overly complex thing for something that should be trivial
> to do...

The idea is to make it trivial. All of the steps above are automatic
and scripted, that's the whole point of what I was saying - to make it
automatic. If it is not automated, then it is unlikely to be adopted
widely or unlikely to stick. The final user will experience it as
trivial.

> How about this, when sending a v2, you have it be in response to the v1
> patch?  Same for v3, have it be in response for the v2 one.  And so on.

If I remember correctly, the in-reply-to method has drawbacks and is
not always desired especially when dealing with a whole series. In
such a case of a whole series, the individual patches are replies to
the cover-letter (as --thread of git format-patch does); they should
not be replies to old versions of that patch; otherwise the threading
looks really weird and confusing.

Plus your response suggestion still does not make it automatic. How
does sending of a v2 know that it is reply to a v1? Some metadata has
to be stored in your git tree for that. That's the whole point of the
steps I listed above.

> Then, when the "final" patch is added, the message id of that will be
> committed to the tree with the git hook that has been posted here, and
> then, if someone _REALLY_ wants to go look up past history of versions,
> they can see it all linked together in a nice pretty tree on
> lore.kernel.org or elsewhere.
>
> And really, this whole discussion has been for the VERY RARE case of
> when someone wants to do some code spelunking and try to figure out
> older versions of a patch history before it was committed and they don't
> feel like searching for the author's name instead.  The HUGE majority of
> kernel developers never actually care about this as they don't have to
> do it.

I think it is a frequent use case that folks want to look up old
revisions of a patch and follow the review/discussions of previous
revisions to know the history of how a patch got to where it is.  I
think it can be really useful.

thanks,

 - Joel
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
