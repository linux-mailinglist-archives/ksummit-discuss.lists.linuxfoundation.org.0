Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E0C9EAF9
	for <lists@lfdr.de>; Tue, 27 Aug 2019 16:28:47 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BEE6315DD;
	Tue, 27 Aug 2019 14:28:34 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DED7315AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:28:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 51CAE89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:28:32 +0000 (UTC)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x7RELuqA143902; Tue, 27 Aug 2019 10:28:28 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2un4fu66jt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 27 Aug 2019 10:28:28 -0400
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x7RENV9r002445;
	Tue, 27 Aug 2019 10:28:28 -0400
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com
	[169.53.41.122])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2un4fu66j4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 27 Aug 2019 10:28:28 -0400
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
	by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id
	x7REQceI019693; Tue, 27 Aug 2019 14:28:27 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
	[9.57.198.24]) by ppma04dal.us.ibm.com with ESMTP id 2ujvv6me3s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 27 Aug 2019 14:28:27 +0000
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
	[9.57.199.108])
	by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	x7RESQH042795382
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Tue, 27 Aug 2019 14:28:26 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 353F8B2064;
	Tue, 27 Aug 2019 14:28:26 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 12CA6B205F;
	Tue, 27 Aug 2019 14:28:26 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.70.82.154])
	by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
	Tue, 27 Aug 2019 14:28:25 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
	id 340A016C2A50; Tue, 27 Aug 2019 07:28:26 -0700 (PDT)
Date: Tue, 27 Aug 2019 07:28:26 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <20190827142826.GD26530@linux.ibm.com>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<CAMuHMdUxz4ufVzMjbrdA8hoNqH2XCccxNQHR+rsdM=kL9aEFbg@mail.gmail.com>
	<CACT4Y+ZyE+0Q79mxD9KMY3NCe8Oxf4Jk=yCYNkdkH2Jhr-fS_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+ZyE+0Q79mxD9KMY3NCe8Oxf4Jk=yCYNkdkH2Jhr-fS_Q@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-27_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1908270153
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
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
Reply-To: paulmck@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, Aug 27, 2019 at 06:30:11AM -0700, Dmitry Vyukov via Ksummit-discuss wrote:
> On Tue, Aug 27, 2019 at 12:33 AM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> >
> > Hi Dmitry,
> >
> > On Tue, Aug 27, 2019 at 2:30 AM Dmitry Vyukov via Ksummit-discuss
> > <ksummit-discuss@lists.linuxfoundation.org> wrote:
> > > A somewhat related point re UUID/Change-ID.
> > > For syzbot (or any other bug tracking system) we want to associate
> > > bugs with fixes. It turned out there is no good identity of a change
> > > that we could use. Commit hash is an obvious first thing to consider,
> > > but (1) it changes in linux-next, (2) sometimes the change is not
> > > committed yet when we do the association, (3) it is different when
> > > backported to LTS (so not possible to say if a fix is in that stable
> > > tree or not).
> >
> > For (3): LTS commits have "commit <sha1> upstream" in their description
> > (perhaps some have "cherry picked from commit <sha1>"?).
> 
> A change identification scheme would need to solve all of these. E.g.
> non-committed changes look more problematic for anything that uses
> commit hashes...
> 
> > > We decided to use commit subject, which works to some degree, but also
> > > has problems: (1) not necessary unique, (2) sometimes people change
> > > subject during backporting (e.g. prepend some prefix), (3) has all the
> > > same problems of email clients messing with text (e.g. I can't issue
> > > #syz fix command for loo long commit subjects with my email client).
> > > Some real UUID/Change-ID would solve all of these problems by giving
> > > us capability to refer to changes rather than a commit in a particular
> > > tree only.
> >
> > "git patch-id --stable <sha1>" may help, too.
> >
> > For quick lookups, you need to generate/append to an index regularly.
> 
> It's not me, it's everybody ;)
> If I am reading git help correctly, this won't handle changes with
> more than 1 version. Also maintainers will be prohibited from doing
> any changed to patches during commit.

Or we are required to add more Link: tags or other annotations describing
what we changed and why.

							Thanx, Paul
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
