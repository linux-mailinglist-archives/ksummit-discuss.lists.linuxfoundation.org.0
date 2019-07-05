Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4AD60BCB
	for <lists@lfdr.de>; Fri,  5 Jul 2019 21:35:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 79B331339;
	Fri,  5 Jul 2019 19:35:09 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 894311310
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 19:34:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0AAC387C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 19:34:52 +0000 (UTC)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x65JWUi2013697 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 5 Jul 2019 15:34:52 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2tjb3h3rmq-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Jul 2019 15:34:51 -0400
Received: from localhost
	by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<rppt@linux.ibm.com>; Fri, 5 Jul 2019 20:34:50 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
	by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
	Authorized Use Only! Violators will be prosecuted; 
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Fri, 5 Jul 2019 20:34:48 +0100
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
	(b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id x65JYlZO25231540
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Fri, 5 Jul 2019 19:34:47 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 557F4A4062;
	Fri,  5 Jul 2019 19:34:47 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B3CAFA405B;
	Fri,  5 Jul 2019 19:34:46 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.207.98])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Fri,  5 Jul 2019 19:34:46 +0000 (GMT)
Date: Fri, 5 Jul 2019 22:34:44 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Linus Walleij <linus.walleij@linaro.org>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
	<CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19070519-0028-0000-0000-000003814470
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19070519-0029-0000-0000-0000244147E9
Message-Id: <20190705193444.GB16150@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-07-05_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1907050245
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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

Hi,

On Fri, Jul 05, 2019 at 11:26:22AM +0200, Linus Walleij wrote:
> On Wed, Jul 3, 2019 at 3:51 PM Theodore Ts'o <tytso@mit.edu> wrote:
> 
> > Personally, if there is a case where it will be useful, it would
> > actually be better for developers to summarize the comments, and
> > design alternatives, considered and rejected, etc., in a cover letter,
> > or better yet in the kernel documentation as part of the design doc
> > for a largish feature, and then if it is a cover letter e-mailed out
> > to the mailing list, include a link to the URL of the cover letter
> > with some text so that a human being reading the commit log will know
> > that there is something actually worth their time to read, as opposed
> > to being treated to a huge amount of legislative history that, at the
> > end of the day, be a complete waste of time to someone trying to debug
> > a live production problem causing data outages for their company.
> 
> I agree. I recently wanted to look into the development history
> of the contiguous memory allocator merged in 2012. This patch set
> went through 24 (!) iterations duly summarized in the cover letter:
> https://lore.kernel.org/lkml/1333462221-3987-1-git-send-email-m.szyprowski@samsung.com/
> it not is on mm/cma.c.
> 
> The links to the earlier iterations on gmane are dead.
> 
> It is one of the more heroic attempts to fix a very real problem
> with memory management in embedded and mobile,
> the second part of which is hopefully coming to a resolution
> with John Stultz work on the ION destaging (ongoing).
> 
> The actual commit in the kernel looks like so:
> git log c64be2bb1c6eb43c838b2c6d57b074078be208dd
> 
> I would have to dig them all out of lore one by one to get
> the picture (and I guess I will). The story of CMA is a really
> interesting one, and now it is part of the MM core.
> Documentation/cma is pretty empty.
> 
> Asking Michal, Marek and Joonsoo who all worked hard on
> this to summarize the development and make the design
> and evolution of this feature understandable would be a
> pretty big development task in itself so I'm not gonna.
> 
> But maybe we should just merge a document with lore
> pointers to Documentation/cma for this feature, and others
> of the same impact?

If you anyway going to dig through it, putting a summary with lore pointers
in Documentation/ would be great.
 
> Yours,
> Linus Walleij
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 

-- 
Sincerely yours,
Mike.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
