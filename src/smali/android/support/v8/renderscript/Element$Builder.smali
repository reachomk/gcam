.class public Landroid/support/v8/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 934
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    .line 935
    new-array v0, v1, [Landroid/support/v8/renderscript/Element;

    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 936
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 937
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    .line 938
    return-void
.end method


# virtual methods
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 948
    if-gtz p3, :cond_0

    .line 949
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Array size cannot be less than 1."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    if-eqz v0, :cond_1

    .line 954
    const-string v0, "#padding_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    iput v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    .line 982
    :goto_0
    return-object p0

    .line 960
    :cond_1
    iget v0, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 961
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    .line 966
    :goto_1
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 967
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [Landroid/support/v8/renderscript/Element;

    .line 968
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    .line 969
    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v2, v2, 0x8

    new-array v2, v2, [I

    .line 970
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 972
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 974
    iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 975
    iput-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    .line 977
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput-object p1, v0, v1

    .line 978
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput-object p2, v0, v1

    .line 979
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput p3, v0, v1

    .line 980
    iget v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    goto :goto_0

    .line 963
    :cond_3
    iput v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_1
.end method

.method public create()Landroid/support/v8/renderscript/Element;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1002
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1003
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v5, v1, [Landroid/support/v8/renderscript/Element;

    .line 1004
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v6, v1, [Ljava/lang/String;

    .line 1005
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v7, v1, [I

    .line 1006
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v0, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v0, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v0, v7, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    array-length v1, v5

    new-array v1, v1, [J

    .line 1011
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_0

    .line 1012
    aget-object v2, v5, v0

    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0, v1, v6, v7}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    move-result-wide v2

    .line 1016
    new-instance v1, Landroid/support/v8/renderscript/Element;

    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {v1 .. v7}, Landroid/support/v8/renderscript/Element;-><init>(JLandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v1
.end method
