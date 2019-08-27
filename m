Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFA29EC77
	for <lists@lfdr.de>; Tue, 27 Aug 2019 17:25:28 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 96C89177F;
	Tue, 27 Aug 2019 15:25:17 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7315516FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 15:25:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 193BA756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 15:25:14 +0000 (UTC)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x7RFHSi6133158; Tue, 27 Aug 2019 11:25:08 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2un6w9gnpt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 27 Aug 2019 11:25:07 -0400
Received: from m0098410.ppops.net (m0098410.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x7RFI2k7135834;
	Tue, 27 Aug 2019 11:25:07 -0400
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com
	[169.63.214.131])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2un6w9gnp1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 27 Aug 2019 11:25:07 -0400
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
	by ppma01dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id
	x7RFKdj0008763; Tue, 27 Aug 2019 15:25:06 GMT
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com
	[9.57.198.26]) by ppma01dal.us.ibm.com with ESMTP id 2ujvv74mwj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 27 Aug 2019 15:25:06 +0000
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
	[9.57.199.108])
	by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	x7RFP5m813304364
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Tue, 27 Aug 2019 15:25:05 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2EFFCB2065;
	Tue, 27 Aug 2019 15:25:05 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 167E9B2068;
	Tue, 27 Aug 2019 15:25:05 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.70.82.154])
	by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
	Tue, 27 Aug 2019 15:25:05 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
	id 513D116C2A50; Tue, 27 Aug 2019 08:25:05 -0700 (PDT)
Date: Tue, 27 Aug 2019 08:25:05 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190827152505.GE26530@linux.ibm.com>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<CAMuHMdUxz4ufVzMjbrdA8hoNqH2XCccxNQHR+rsdM=kL9aEFbg@mail.gmail.com>
	<CACT4Y+ZyE+0Q79mxD9KMY3NCe8Oxf4Jk=yCYNkdkH2Jhr-fS_Q@mail.gmail.com>
	<20190827142826.GD26530@linux.ibm.com>
	<alpine.DEB.2.21.1908271703240.1939@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908271703240.1939@nanos.tec.linutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-27_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1908270156
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
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
Reply-To: paulmck@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Tue, Aug 27, 2019 at 05:06:13PM +0200, Thomas Gleixner wrote:
> On Tue, 27 Aug 2019, Paul E. McKenney wrote:
> > On Tue, Aug 27, 2019 at 06:30:11AM -0700, Dmitry Vyukov via Ksummit-discuss wrote:
> > > If I am reading git help correctly, this won't handle changes with
> > > more than 1 version. Also maintainers will be prohibited from doing
> > > any changed to patches during commit.
> > 
> > Or we are required to add more Link: tags or other annotations describing
> > what we changed and why.
> 
> The point is that the Link: tag connects the commit to the email by
> which it was submitted.
> 
> If the committer fixes something up when committing, then this still stays
> the same connection.
> 
> So you have SHA1 + Message-ID. If the SHA1 changes and Message-ID stays
> then same, then either the patch was amended or rebased. But you can figure
> that out with diff.

So I "git am" a patch after running your tool, and it has "Link:".  I run
tests, find a bug, and update the commit with a fix (which admittedly
is not the normal workflow).  I can presumably keep doing what I do now:

[ paulmck: Fix blablabla due to rcutorture failure blablabla. ]

Someone then reviews the patch and reports a bug.  I update the
commit with a fix.  Now what I do is this:

[ paulmck: Update based on blablabla feedback from So And So. ]

I suppose I could add a second "Link:", which was what I was thinking
when responding to Dmitry's email.  Sounds like I continue with the
"[ paulmck: blablabla ]" approach  ;-)

							Thanx, Paul
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
