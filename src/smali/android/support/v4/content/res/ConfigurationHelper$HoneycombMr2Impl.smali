.class Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMr2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;-><init>()V

    .line 78
    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 1097
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>()V

    .line 1098
    return-void
.end method


# virtual methods
.method public final getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 82
    .line 1026
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 82
    return v0
.end method

.method public final getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 87
    .line 1030
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 87
    return v0
.end method

.method public final getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 92
    .line 1034
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 92
    return v0
.end method
