Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B149A9B787
	for <lists@lfdr.de>; Fri, 23 Aug 2019 22:02:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EE83AEE3;
	Fri, 23 Aug 2019 20:02:32 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63F0DE28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 20:02:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 65334E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 20:02:29 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id x3so9940113lji.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 13:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tbvcz+zVT+qQ15MYMD6UJLF7VJmSefMIjoQoXDdwTCo=;
	b=EXM2QxUjvR3fYhYnOD79A6dpZpCQKi7RLs2uVjaov2BfYutO6SYZRGOXHmp9WFGDO1
	CGFzhIYTWTt7sYhx6FuIQywGC0eqwAAm+s+uFApzVtywuzlqp2st/drSQD7d5nP4SN8h
	QD+HU8+TkKlQXAmAT+TCDeLb5USVW3/66xNQycWbykhM63LGaSgwuIxNOqM9u+nG3GwT
	dOs5aAux4X+NnVINxJwnAsdQyLXFDyRTPx6iI2hlRNKfyizDaaaHM3sEwJ9gDbsgnQZx
	xe88eAuUuTgE7Mrj1C/tyxGIJrKRE0NUz0JLz5FGDN9BtGSgqJxwIITqOI6XHJoS4Pn4
	I2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tbvcz+zVT+qQ15MYMD6UJLF7VJmSefMIjoQoXDdwTCo=;
	b=DrSffqJIctc7YgvPHJkuYTPfMW/A2tRIFonK7Et8LzF2pdlKQVntipIh3oS4PssoIc
	Va0q/f/Qf+Z6GB8avp7OZFQCjNI1GIXTRsFpH7koDbqptJxeVE4lKmycNM7qchORek9Z
	sMXJ3eSIHdm2iOEzRHmYpFD1lNx/LCSYMk/c/EliCR51IIk9GV/wBBzQxZ96oE9hhyAU
	3E9TUiOLhkgPVdWToEng9WXa9I1y4iaupBQyFeRgKqBAlgTnQBM+jWbYM23S5A2grT+o
	SzH37SNw1oWNVF6Gf29n+X7tb6abfd9YQab2kunnk3YkKVZ4cs1P9JGR7YdiUsZr6B/l
	SABw==
X-Gm-Message-State: APjAAAV4jRFH1IooljXeGVjLgXSVKxV/TKH9JQa0btiaYgovvmCQ1Sxz
	6xo/iRG4l6tajwek2jfc3uOpzbRz7afSblnA9a9FmQ==
X-Google-Smtp-Source: APXvYqwG6WfpTdd0NB71xn/MBq5Pl353PmucThz0EBqrVr0PZV5891Id+I/p/yCLGDQbxl8tOIRu2G0PRGVVjWDb0fY=
X-Received: by 2002:a2e:331a:: with SMTP id d26mr3890848ljc.86.1566590547703; 
	Fri, 23 Aug 2019 13:02:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
From: Christian Brauner <christian@brauner.io>
Date: Fri, 23 Aug 2019 22:02:16 +0200
Message-ID: <CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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
Content-Type: multipart/mixed; boundary="===============7806357223355692740=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

--===============7806357223355692740==
Content-Type: multipart/alternative; boundary="0000000000001acbc50590ce4934"

--0000000000001acbc50590ce4934
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 23, 2019, 21:17 Thomas Gleixner <tglx@linutronix.de> wrote:

> On Fri, 23 Aug 2019, Dmitry Torokhov wrote:
> > On Fri, Aug 23, 2019 at 12:35:03PM -0400, Joel Fernandes wrote:
> > > On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov
> > > <dmitry.torokhov@gmail.com> wrote:
> > > > On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
> > > > >
> > > > > Yes, it's work for the submitter, but it's always work if the
> submitter
> > > > > wants to have a proper trace.
> > > >
> > > > Here is where I disagree with you. As a patch submitter, I frankly
> could
> > > > not care less about proper trace, history, etc. I might be putting
> cover
> > >
> > > But that is exactly what the problem statement is. Doug does care
> > > about tracing/history and wants that to be more robust etc.
> >
> > Doug here is not a submitter ;)
>
> Well, if he wants the changeids there then submitters need to insert them,
> right? So it's work no matter what unless it can be automated with tooling.
>
> Guess what, how I inject the Link to the coverletter of the previous
> version of a patch series? Definitely not manualy.
>
> So yes, if you want proper traceability then all involved people have to do
> something. If it can be done with tooling fully automated, fine. If not,
> it's work whatever method you chose.
>
> We cannot enforce the changeid thing in the community, but Google can
> inforce it internally. So we give them a way to be traceable w/o plastering
> the kernel logs with potentially useless information.
>
> That said, I'm fine with a Link as well, as long as it is public
>

A link is definitely more helpful then the change-id.
Quite a few maintainers are already making use of links to various sites
anyway so I don't see a good reason not allow Links to Gerrit or whatever.

accessible. If not, then the coverletter/discard area is the place to use.
>

Right, change-id should go after --- which is also what Dmitry Vyukov
suggested.

One thing I wonder though. What's the ultimate goal here?
Enabling people to review on Gerrit and lkml simultaneously?
I mean, apart from tracking versions of patch series/patches this can't be
all, right?
We can already do that right now and I'm already doing that when applying
stuff to my tree: inserting the link to the version of the patch set I
applied and linking to the previous version in each new version of the
patchset.
That could also be automated.
So is allowing reviews both on Gerrit or whatever the goal here and if so
how do we ensure that lkml sees all reviews?

Christian

--0000000000001acbc50590ce4934
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Aug 23, 2019, 21:17 Thomas Gleixner &lt;<a href=3D"mailto:tglx@linu=
tronix.de">tglx@linutronix.de</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">On Fri, 23 Aug 2019, Dmitry Torokhov wrote:<br>
&gt; On Fri, Aug 23, 2019 at 12:35:03PM -0400, Joel Fernandes wrote:<br>
&gt; &gt; On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov<br>
&gt; &gt; &lt;<a href=3D"mailto:dmitry.torokhov@gmail.com" target=3D"_blank=
" rel=3D"noreferrer">dmitry.torokhov@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wr=
ote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Yes, it&#39;s work for the submitter, but it&#39;s alwa=
ys work if the submitter<br>
&gt; &gt; &gt; &gt; wants to have a proper trace.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Here is where I disagree with you. As a patch submitter, I f=
rankly could<br>
&gt; &gt; &gt; not care less about proper trace, history, etc. I might be p=
utting cover<br>
&gt; &gt; <br>
&gt; &gt; But that is exactly what the problem statement is. Doug does care=
<br>
&gt; &gt; about tracing/history and wants that to be more robust etc.<br>
&gt; <br>
&gt; Doug here is not a submitter ;)<br>
<br>
Well, if he wants the changeids there then submitters need to insert them,<=
br>
right? So it&#39;s work no matter what unless it can be automated with tool=
ing.<br>
<br>
Guess what, how I inject the Link to the coverletter of the previous<br>
version of a patch series? Definitely not manualy. <br>
<br>
So yes, if you want proper traceability then all involved people have to do=
<br>
something. If it can be done with tooling fully automated, fine. If not,<br=
>
it&#39;s work whatever method you chose.<br>
<br>
We cannot enforce the changeid thing in the community, but Google can<br>
inforce it internally. So we give them a way to be traceable w/o plastering=
<br>
the kernel logs with potentially useless information.<br>
<br>
That said, I&#39;m fine with a Link as well, as long as it is public<br></b=
lockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">A link =
is definitely more helpful then the change-id.</div><div dir=3D"auto">Quite=
 a few maintainers are already making use of links to various sites anyway =
so I don&#39;t see a good reason not allow Links to Gerrit or whatever.</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
accessible. If not, then the coverletter/discard area is the place to use.<=
br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">R=
ight, change-id should go after --- which is also what Dmitry Vyukov sugges=
ted.</div><div dir=3D"auto"><br></div><div dir=3D"auto">One thing I wonder =
though. What&#39;s the ultimate goal here?</div><div dir=3D"auto">Enabling =
people to review on Gerrit and lkml simultaneously?</div><div dir=3D"auto">=
I mean, apart from tracking versions of patch series/patches this can&#39;t=
 be all, right?</div><div dir=3D"auto">We can already do that right now and=
 I&#39;m already doing that when applying stuff to my tree: inserting the l=
ink to the version of the patch set I applied and linking to the previous v=
ersion in each new version of the patchset.</div><div dir=3D"auto">That cou=
ld also be automated.</div><div dir=3D"auto">So is allowing reviews both on=
 Gerrit or whatever the goal here and if so how do we ensure that lkml sees=
 all reviews?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Christian<=
/div></div>

--0000000000001acbc50590ce4934--

--===============7806357223355692740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============7806357223355692740==--
