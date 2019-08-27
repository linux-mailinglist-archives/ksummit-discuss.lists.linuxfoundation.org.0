Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 360729F2A2
	for <lists@lfdr.de>; Tue, 27 Aug 2019 20:50:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B1C341B5F;
	Tue, 27 Aug 2019 18:50:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 335571AE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 18:50:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9EEF789B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 18:50:30 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t14so12187566plr.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 11:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=Tc/OhcPDptmuP/KOh8QQSxkZYmPs5QWUw7Qro2Fh5TA=;
	b=SzpZEl2F4ys7/HnXkK44hkCPLvlNUsdnMa8HwR3rYztXwPu9kYVh4m1jQSuXM+2f8i
	da7cZlWKsAt2RpzXB2ytq2xbP5azRHt1fajOP8jyIr0DnjrDvFfXj4mAD0kulKRw6x1i
	J+CJcFaHTINYtorvPGR9BpGugVugAvDY7VgEFbdlL+wksq13ElkTEPt+eA4lh8TNNbmn
	P37fl43GSH775BrpLNxruc899XsbOTQ1WF99tk0Z05rBc+u21M8pJzxQEeUS7bsXqCJD
	+gxlrg0WSG1fUfQYVSnxkFsGV8sBXWwmi+aO6RUaD0uG96Yao1a4yWT/z4I5uYiYipEl
	hsqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
	:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=Tc/OhcPDptmuP/KOh8QQSxkZYmPs5QWUw7Qro2Fh5TA=;
	b=Q8a2k8aa0DLUO1y5Pw+qQSBn+rl9GopOy5mNVqv5BBEey08l4lpNEOM4CX5WDFwgX0
	pn1Mx48D8X6aoY/DMeDgXMrEj2xAINlXFBrXzPoaxr6DmD9a4GWlTlOnovstZUzcO3K2
	HztxeoGZDukOMPKmOV4TVKACvZo/bqSYByBE63akqlaPqsReZrqqpeu1V3aA/wUMs9tu
	W8taVobX2Ht5VdSqCjyHNFTMNT8FQ3dM7vAJp9KDZpSQKu1Q7TQ966kJf0ZF5nD1QFcQ
	c2Loi10dpIviCB2yJKPdKuNDxU2P8sfe5ssAwFWeQmGfh3a1Fxt0rWOcY9bam568k1e9
	GsHg==
X-Gm-Message-State: APjAAAXkSKliUHmErbMO+wz0yJ7BGeQlH6nFV2msgtMkOQ/XtK8NXBti
	++MpobC8QkZ6zACqjF5JnYw=
X-Google-Smtp-Source: APXvYqy65WhkCxnzijkL+LXUMbSFdkaN2KEw9fR/PzdK3RiANf7B4ooV7RICTAPgN1EF09N/hvSy2A==
X-Received: by 2002:a17:902:6b07:: with SMTP id
	o7mr344510plk.180.1566931830219; 
	Tue, 27 Aug 2019 11:50:30 -0700 (PDT)
Received: from localhost (108-223-40-66.lightspeed.sntcca.sbcglobal.net.
	[108.223.40.66])
	by smtp.gmail.com with ESMTPSA id x9sm113141pgp.75.2019.08.27.11.50.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Aug 2019 11:50:29 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:50:27 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190827185027.GA15384@roeck-us.net>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<CAMuHMdWFh2cK_T3y=iAfEOq=Nv_JpbKKqJ2chi=X40cWLxqBgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWFh2cK_T3y=iAfEOq=Nv_JpbKKqJ2chi=X40cWLxqBgA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, Aug 27, 2019 at 07:34:45PM +0200, Geert Uytterhoeven wrote:
> Hi G=FCnter,
> =

> On Tue, Aug 27, 2019 at 4:01 PM Guenter Roeck <linux@roeck-us.net> wrote:
> > On 8/27/19 6:48 AM, Greg Kroah-Hartman wrote:
> > > On Tue, Aug 27, 2019 at 06:24:36AM -0700, Dmitry Vyukov wrote:
> > >> On Mon, Aug 26, 2019 at 11:06 PM Thomas Gleixner <tglx@linutronix.de=
> wrote:
> > >>> On Mon, 26 Aug 2019, Dmitry Vyukov wrote:
> > >>>> A somewhat related point re UUID/Change-ID.
> > >>>> For syzbot (or any other bug tracking system) we want to associate
> > >>>> bugs with fixes. It turned out there is no good identity of a chan=
ge
> > >>>> that we could use. Commit hash is an obvious first thing to consid=
er,
> > >>>> but (1) it changes in linux-next, (2) sometimes the change is not
> > >>>> committed yet when we do the association, (3) it is different when
> > >>>> backported to LTS (so not possible to say if a fix is in that stab=
le
> > >>>> tree or not).
> > >>>> We decided to use commit subject, which works to some degree, but =
also
> > >>>> has problems: (1) not necessary unique, (2) sometimes people change
> > >>>> subject during backporting (e.g. prepend some prefix), (3) has all=
 the
> > >>>> same problems of email clients messing with text (e.g. I can't iss=
ue
> > >>>> #syz fix command for loo long commit subjects with my email client=
).
> > >>>> Some real UUID/Change-ID would solve all of these problems by givi=
ng
> > >>>> us capability to refer to changes rather than a commit in a partic=
ular
> > >>>> tree only.
> > >>>
> > >>> If we adopt the Link: ..../$MSG tag widely then you have a UUID.
> > >>
> > >> Is there a way to ensure that everybody will generate right IDs
> > >> (ChangeID-Version) and then a link in canonical form will be included
> > >> into commit? As far as I understand this is not possible with the
> > >> current kernel tooling, as this aspect is not under control of any
> > >> unified tooling.
> > >> I see different maintainers use links to different archive web sites.
> > >> Also sometimes Link is present for other reasons (e.g. link to bug
> > >> report).
> > >> The link will need to be added by every developer (rather than
> > >> maintainer) so that it's available before the change is committed
> > >> anywhere.
> > >
> > > For subsystems I maintain, I am already adding the Link: tag to
> > > lore.kernel.org with the message id in it.  That is automatically add=
ed
> > > by my scripts.
> > >
> > >> Though, most of these are problems for any other change identificati=
on scheme...
> > >
> > > Note, we have 4000+ developers every year, it's hard enough to get th=
em
> > > all to agree on major things, let alone crazy stuff like this :)
> > >
> >
> > Is it really that crazy ?
> >
> > I have to use a combination of subject analysis and patch content analy=
sis
> > using fuzzy text / string comparison, combined with an analysis of the =
patch
> > description, to answer a simple question: Is this patch upstream, and w=
hat is
> > its upstream SHA ? Having a UUID tag would make this a simple and
> =

> I typically use "git cherry -v" to check if a patch is upstream.
> Yes, this may miss a patch that was changed.  But that can be a good thin=
g.
> =


I use that as well, as "first line of defense". But it doesn't always work,
for example if a patch was applied to a downstream branch while its =

upstream review was still going on, or for backports which required
conflict resolutions or context changes.

> > straightforward operation. What is crazy is having to do all this analy=
sis.
> =

> What happens to the UUID when a patch is split in two parts?
> If a part is applied with the same UUID, that would give the false impres=
sion
> that the original full patch was applied.
> =


Presumably one would/should drop the original UUID in such a situation.
One should also not blindly trust a uuid and also perform an automated
and/or manual review. The key would be to have the ability to identify
a patch without having to search through all of them.

In practice, I use a fuzzy match on the patch subject today, followed
by another fuzzy match on the patch content. Both are expensive, even
with parallel search, especially if one has to search through 100k+
patches. The subject match is also error prone - a computer has a
diffferent opinion about "match" than the human brain, and a seemingly
innocent subject change may result in a complete mismatch. Also, yes,
there may be multiple patches with the same or almost the same subject.
The ability to replace or at least augment that part of the search
with a uuid match would be extremely helpful.

> At least rebasing (using git rebase) your submissions against upstream wi=
ll
> keep the part that still hasn't been applied.
> =


Unfortunately, a straight rebase doesn't work for a number of reasons.
In a nutshell we have too many local patches to deal with, in too many
areas of the kernel. Also, the deviation from upstream is in almost all
cases not what we want or need if a downstream patch differs from its
upstream version. We have to use a more intelligent (guided) approach.

Guenter
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
