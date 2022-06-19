Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F41550D0D
	for <lists@lfdr.de>; Sun, 19 Jun 2022 22:57:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A53CC409EC;
	Sun, 19 Jun 2022 20:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A53CC409EC
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Qs9XPS8z
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1ysLlRRgudM; Sun, 19 Jun 2022 20:57:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 788A7409E1;
	Sun, 19 Jun 2022 20:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 788A7409E1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 17253C0082;
	Sun, 19 Jun 2022 20:57:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70E01C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 20:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B6BA409D6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 20:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B6BA409D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HTlcKFir3ElE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 20:57:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1B1D40166
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1B1D40166
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 20:57:22 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id k24so11562884oij.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 13:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fFMUKlS8zgbsWWRN9UXoz7Fi23rToNB7HxlW5jlxL6M=;
 b=Qs9XPS8zwDqsb/yrZ6pZFtUg1wdNVl1Hff5c4PVwyEsqUuxJkb9M8/rFtlDDPSTGNU
 VX02JJG32D+FY75NbKtdnogp9FYO+nUYsOP3Xm2dYmxfyXVITp8PfaLMiijagfamx/O7
 3oEsmo/GYxMDDT4k01RLMLzS4rsYShfzFpTeeajOFgQutNdWLX3Nlfv4r7cjZE+Jz+wb
 IagUkDyNWq7vcfRfr8n2lNhtfodZf/YmKWrlxy5v1tj3nT5pKbjTF0vuhqw9XQASrnHE
 vkZS9xZfFJ20nlhGRe/GRa4voIFV8bxRKpVaZW7pctcMxpJ8JL8QJMlQwUUpnq5G3jWy
 r8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fFMUKlS8zgbsWWRN9UXoz7Fi23rToNB7HxlW5jlxL6M=;
 b=6V8EZJCWa5+30fbJVj/ANrhB5BLCuNaeJoBbDlOZOhik1CxkNEd7TRsU+ztI0y70Jp
 Aew1qusNj65xdnlYtzCIWUpkFuKto+zoFSW2fQJ3X7g2Kg+DKIeb/Gb9gHtscUp9yqEj
 E6NbgbDOfrcksxG4FIWQ46YxFon0hM7kFMj5vo0d2G5uziU9A0cYHAGLkHwWUKeCogk6
 6/8mqpIkQZUIw2TWJH3wfiai6g6thBvYeyhws17Ngi9cQvKNwhuh3lOFyLfEx/JH8JoC
 MpPeFizJWed2xa/ccuwwE/8Z6XUDk+vjhQRwCUFRtujvW3wIMcY04C1LKpGw8/ziTy57
 ZBaQ==
X-Gm-Message-State: AOAM533aBzpuUxAP/12/Ayk7UkZRRY6A8wFiUYG1kdUXuyYWrxtApjHH
 0I8NF7knwxWimptQWW1CNxbirD5WZVEBFAo/7aA=
X-Google-Smtp-Source: ABdhPJxJfx5OsUMQQF7BE0Oy4lUKuZnc/Jvma5leomIT1GeXki38gOsWb8qLUba9Eg06p/iAYiRoDdciOSECnGfUzbw=
X-Received: by 2002:a05:6808:2114:b0:32f:18f4:d8a6 with SMTP id
 r20-20020a056808211400b0032f18f4d8a6mr15062093oiw.189.1655672241911; Sun, 19
 Jun 2022 13:57:21 -0700 (PDT)
MIME-Version: 1.0
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com> <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <Yq8pXroV+23xr5w5@pendragon.ideasonboard.com>
 <CAMuHMdW02U7qdvGNqijyg_5NbJ3aKyCB8j26FjeAMR-aMY_bDQ@mail.gmail.com>
In-Reply-To: <CAMuHMdW02U7qdvGNqijyg_5NbJ3aKyCB8j26FjeAMR-aMY_bDQ@mail.gmail.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Sun, 19 Jun 2022 16:57:10 -0400
Message-ID: <CAFhKne81bdbQWnTSMhALhJVbRFMtX1ygREj-ryFU8xDKqEDk=A@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Christoph Hellwig <hch@infradead.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, ksummit@lists.linux.dev
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Rust
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1243793132533540795=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============1243793132533540795==
Content-Type: multipart/alternative; boundary="000000000000d7fd0a05e1d33b99"

--000000000000d7fd0a05e1d33b99
Content-Type: text/plain; charset="UTF-8"

I think there are a lot of languages which promise this. The question is
whether any of them will get the critical mass to ensure that we have a
steady supply of programmers who know the language. Imagine if we'd decided
to use Haskell, Erlang or Ada (languages I was taught in university which
no longer have significant programming communities).

Rust seems to have the momentum. More so than Go or any other new language
in recent years.

On Sun., Jun. 19, 2022, 15:08 Geert Uytterhoeven, <geert@linux-m68k.org>
wrote:

> Hi Laurent,
>
> On Sun, Jun 19, 2022 at 3:49 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> > On Sun, Jun 19, 2022 at 08:56:46AM -0400, James Bottomley wrote:
> > > On Sun, 2022-06-19 at 13:04 +0300, Laurent Pinchart wrote:
> > > > On Sat, Jun 18, 2022 at 11:13:59PM -0700, Christoph Hellwig wrote:
> > > > > On Sat, Jun 18, 2022 at 11:42:07PM +0300, Laurent Pinchart wrote:
> > > > > > All previous topics but this one are technical. To restore the
> > > > > > balance a bit (and also because I believe it's important to the
> > > > > > success of this project :-)), I'd like to also discuss the impact
> > > > > > on the kernel maintenance at large, beyond just the maintainers
> > > > > > who opt in to be early adopters of rust in their subsystem.
> > > > >
> > > > > Yes.  That is I think the most important point.
> > > > >
> > > > > I've played around with rust a bit for userspace project, and there
> > > > > is things I like a lot like strict type safety and the ownership
> > > > > model, and things I detest like verbose and unlogic syntax, the
> > > > > cargo cult of vendoring libraries instead of a sane shared library
> > > > > and versioning model (althought that should be largerly irrelevant
> > > > > for the kernel), and compared to many other languages it seems
> > > > > overall rather sane.
> > >
> > > This is more or less my assessment from playing with rust as well.
> > >
> > > > > But I'm really worried about the impact on the kernel, as interface
> > > > > between languages are a real pain, and so far I'm not convinced at
> > > > > all that this pain is worth the gain, even if that could change in
> > > > > the future.
> > > >
> > > > One point I'd like to explicitly address, as it seems to be very
> > > > relevant to me when it comes to whether or not the pain is worth the
> > > > gain, is how we'll deal with the fact that the rust compiler will
> > > > tell a non-negligible [*] part of the kernel developers that they
> > > > don't have the skills to write kernel code. Will we have a credible
> > > > option to offer there to help people improve their skills set, and
> > > > how will we deal with the fact that some people will be left on the
> > > > side of the road ? Or would we acknowledge what may be the elephant
> > > > in the room that this would actually be a good thing for the kernel
> > > > code quality ? What about the impact on a community that is already
> > > > overworked and prone to burn-out ?
> > > >
> > > > [*] I have no way to quantify this at the moment, maybe I'm overly
> > > > pessimistic, and the number will likely vary depending on areas,
> > > > probably impacting BSPs differently than mainline.
> > >
> > > I don't think that's a huge concern.  After all rust isn't going to
> > > penetrate every subsystem all at once ... and realistically it will
> > > only penetrate some subsystems if there's the ability to review it.
> > >
> > > I really doubt anyone at the maintainer or reviewer level of the kernel
> > > doesn't have the ability to learn rust (now whether they have the
> > > desire to is quite another matter) and I'd be surprised if we can find
> > > any kernel developer who only speaks C.  I think the biggest problem
> > > with rust is that there's definitely an anti-C bias in the language.
> > > What I mean by that is if you look at Java they chose to be as close to
> > > C where possible to make the language easier to learn.  Rust seems to
> > > have taken the opposite view and picked a lot of things which could
> > > have been C like (typing, function calls, returns, mutability, etc.)
> > > and done them differently just because they wanted to be different from
> > > C.  That does cause issues for C people because you tend to trip over
> > > the anti-C biases in the language and are constantly having to look the
> > > basic syntax up.  This really increases the learning curve going from C
> > > to rust, which gets annoying very fast, but it's not insurmountable.
> >
> > Time to invent a C-like version of rust ? :-) Jokes aside, as far as I
> > understand the syntax is different from C because it was inspired by
> > other languages, not out of a desire to be anti-C. I could be wrong
> > though, and it doesn't really matter anyway, I doubt there's anything we
> > could do there.
>
> When reading "things which could have been C like", I had the exact
> same thought ;-)
>
> In the past, many new paradigms were implemented in a variety of new
> languages, usually inspired by other languages (e.g. some looked like
> C, others like Pascal).
>
> At the risk of sounding too procrastinating (perfect is the enemy
> of good, and see James' thread about becoming too fearful...),
> perhaps it is wise to question if Rust arrived too soon, and a more
> C-like language implementing the same safety paradigms is just around
> the corner, or already in its infancy?
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 --
> geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker.
> But
> when I'm talking to journalists I just say "programmer" or something like
> that.
>                                 -- Linus Torvalds
>
>

--000000000000d7fd0a05e1d33b99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I think there are a lot of languages which promise this. =
The question=C2=A0is whether any of them will get the critical mass to ensu=
re that we have a steady supply of programmers who know the language. Imagi=
ne if we&#39;d decided to use Haskell, Erlang or Ada (languages I was taugh=
t in university which no longer have significant programming communities).<=
div dir=3D"auto"><br></div><div dir=3D"auto">Rust seems to have the momentu=
m. More so than Go or any other new language in recent=C2=A0years.</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Sun., Jun. 19, 2022, 15:08 Geert Uytterhoeven, &lt;<a href=3D"mailto:geert@=
linux-m68k.org">geert@linux-m68k.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">Hi Laurent,<br>
<br>
On Sun, Jun 19, 2022 at 3:49 PM Laurent Pinchart<br>
&lt;<a href=3D"mailto:laurent.pinchart@ideasonboard.com" target=3D"_blank" =
rel=3D"noreferrer">laurent.pinchart@ideasonboard.com</a>&gt; wrote:<br>
&gt; On Sun, Jun 19, 2022 at 08:56:46AM -0400, James Bottomley wrote:<br>
&gt; &gt; On Sun, 2022-06-19 at 13:04 +0300, Laurent Pinchart wrote:<br>
&gt; &gt; &gt; On Sat, Jun 18, 2022 at 11:13:59PM -0700, Christoph Hellwig =
wrote:<br>
&gt; &gt; &gt; &gt; On Sat, Jun 18, 2022 at 11:42:07PM +0300, Laurent Pinch=
art wrote:<br>
&gt; &gt; &gt; &gt; &gt; All previous topics but this one are technical. To=
 restore the<br>
&gt; &gt; &gt; &gt; &gt; balance a bit (and also because I believe it&#39;s=
 important to the<br>
&gt; &gt; &gt; &gt; &gt; success of this project :-)), I&#39;d like to also=
 discuss the impact<br>
&gt; &gt; &gt; &gt; &gt; on the kernel maintenance at large, beyond just th=
e maintainers<br>
&gt; &gt; &gt; &gt; &gt; who opt in to be early adopters of rust in their s=
ubsystem.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Yes.=C2=A0 That is I think the most important point.<br=
>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I&#39;ve played around with rust a bit for userspace pr=
oject, and there<br>
&gt; &gt; &gt; &gt; is things I like a lot like strict type safety and the =
ownership<br>
&gt; &gt; &gt; &gt; model, and things I detest like verbose and unlogic syn=
tax, the<br>
&gt; &gt; &gt; &gt; cargo cult of vendoring libraries instead of a sane sha=
red library<br>
&gt; &gt; &gt; &gt; and versioning model (althought that should be largerly=
 irrelevant<br>
&gt; &gt; &gt; &gt; for the kernel), and compared to many other languages i=
t seems<br>
&gt; &gt; &gt; &gt; overall rather sane.<br>
&gt; &gt;<br>
&gt; &gt; This is more or less my assessment from playing with rust as well=
.<br>
&gt; &gt;<br>
&gt; &gt; &gt; &gt; But I&#39;m really worried about the impact on the kern=
el, as interface<br>
&gt; &gt; &gt; &gt; between languages are a real pain, and so far I&#39;m n=
ot convinced at<br>
&gt; &gt; &gt; &gt; all that this pain is worth the gain, even if that coul=
d change in<br>
&gt; &gt; &gt; &gt; the future.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; One point I&#39;d like to explicitly address, as it seems to=
 be very<br>
&gt; &gt; &gt; relevant to me when it comes to whether or not the pain is w=
orth the<br>
&gt; &gt; &gt; gain, is how we&#39;ll deal with the fact that the rust comp=
iler will<br>
&gt; &gt; &gt; tell a non-negligible [*] part of the kernel developers that=
 they<br>
&gt; &gt; &gt; don&#39;t have the skills to write kernel code. Will we have=
 a credible<br>
&gt; &gt; &gt; option to offer there to help people improve their skills se=
t, and<br>
&gt; &gt; &gt; how will we deal with the fact that some people will be left=
 on the<br>
&gt; &gt; &gt; side of the road ? Or would we acknowledge what may be the e=
lephant<br>
&gt; &gt; &gt; in the room that this would actually be a good thing for the=
 kernel<br>
&gt; &gt; &gt; code quality ? What about the impact on a community that is =
already<br>
&gt; &gt; &gt; overworked and prone to burn-out ?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; [*] I have no way to quantify this at the moment, maybe I&#3=
9;m overly<br>
&gt; &gt; &gt; pessimistic, and the number will likely vary depending on ar=
eas,<br>
&gt; &gt; &gt; probably impacting BSPs differently than mainline.<br>
&gt; &gt;<br>
&gt; &gt; I don&#39;t think that&#39;s a huge concern.=C2=A0 After all rust=
 isn&#39;t going to<br>
&gt; &gt; penetrate every subsystem all at once ... and realistically it wi=
ll<br>
&gt; &gt; only penetrate some subsystems if there&#39;s the ability to revi=
ew it.<br>
&gt; &gt;<br>
&gt; &gt; I really doubt anyone at the maintainer or reviewer level of the =
kernel<br>
&gt; &gt; doesn&#39;t have the ability to learn rust (now whether they have=
 the<br>
&gt; &gt; desire to is quite another matter) and I&#39;d be surprised if we=
 can find<br>
&gt; &gt; any kernel developer who only speaks C.=C2=A0 I think the biggest=
 problem<br>
&gt; &gt; with rust is that there&#39;s definitely an anti-C bias in the la=
nguage.<br>
&gt; &gt; What I mean by that is if you look at Java they chose to be as cl=
ose to<br>
&gt; &gt; C where possible to make the language easier to learn.=C2=A0 Rust=
 seems to<br>
&gt; &gt; have taken the opposite view and picked a lot of things which cou=
ld<br>
&gt; &gt; have been C like (typing, function calls, returns, mutability, et=
c.)<br>
&gt; &gt; and done them differently just because they wanted to be differen=
t from<br>
&gt; &gt; C.=C2=A0 That does cause issues for C people because you tend to =
trip over<br>
&gt; &gt; the anti-C biases in the language and are constantly having to lo=
ok the<br>
&gt; &gt; basic syntax up.=C2=A0 This really increases the learning curve g=
oing from C<br>
&gt; &gt; to rust, which gets annoying very fast, but it&#39;s not insurmou=
ntable.<br>
&gt;<br>
&gt; Time to invent a C-like version of rust ? :-) Jokes aside, as far as I=
<br>
&gt; understand the syntax is different from C because it was inspired by<b=
r>
&gt; other languages, not out of a desire to be anti-C. I could be wrong<br=
>
&gt; though, and it doesn&#39;t really matter anyway, I doubt there&#39;s a=
nything we<br>
&gt; could do there.<br>
<br>
When reading &quot;things which could have been C like&quot;, I had the exa=
ct<br>
same thought ;-)<br>
<br>
In the past, many new paradigms were implemented in a variety of new<br>
languages, usually inspired by other languages (e.g. some looked like<br>
C, others like Pascal).<br>
<br>
At the risk of sounding too procrastinating (perfect is the enemy<br>
of good, and see James&#39; thread about becoming too fearful...),<br>
perhaps it is wise to question if Rust arrived too soon, and a more<br>
C-like language implementing the same safety paradigms is just around<br>
the corner, or already in its infancy?<br>
<br>
Gr{oetje,eeting}s,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Geert<br>
<br>
--<br>
Geert Uytterhoeven -- There&#39;s lots of Linux beyond ia32 -- <a href=3D"m=
ailto:geert@linux-m68k.org" target=3D"_blank" rel=3D"noreferrer">geert@linu=
x-m68k.org</a><br>
<br>
In personal conversations with technical people, I call myself a hacker. Bu=
t<br>
when I&#39;m talking to journalists I just say &quot;programmer&quot; or so=
mething like that.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -- Linus Torvalds<br>
<br>
</blockquote></div>

--000000000000d7fd0a05e1d33b99--

--===============1243793132533540795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============1243793132533540795==--
