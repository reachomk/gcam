.class final Lcom/ortiz/touch/TouchImageView$CompatScroller;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatScroller"
.end annotation


# instance fields
.field isPreGingerbread:Z

.field overScroller:Landroid/widget/OverScroller;

.field scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ortiz/touch/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 1221
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    .line 1227
    :goto_0
    return-void

    .line 1224
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ortiz/touch/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 1225
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    goto :goto_0
.end method
