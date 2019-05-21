.class final Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VClipPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1596
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V
    .locals 0

    .prologue
    .line 1599
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1600
    return-void
.end method


# virtual methods
.method public final inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .prologue
    .line 1604
    const-string v0, "pathData"

    invoke-static {p4, v0}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1605
    if-nez v0, :cond_0

    .line 1612
    :goto_0
    return-void

    .line 1608
    :cond_0
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableClipPath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2618
    const/4 v1, 0x0

    .line 2619
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2620
    if-eqz v1, :cond_1

    .line 2621
    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mPathName:Ljava/lang/String;

    .line 2624
    :cond_1
    const/4 v1, 0x1

    .line 2625
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2626
    if-eqz v1, :cond_2

    .line 2627
    invoke-static {v1}, Landroid/support/graphics/drawable/TypedArrayUtils;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1611
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public final isClipPath()Z
    .locals 1

    .prologue
    .line 1633
    const/4 v0, 0x1

    return v0
.end method
