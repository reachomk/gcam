.class final Lcom/ortiz/touch/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomVariables"
.end annotation


# instance fields
.field public focusX:F

.field public focusY:F

.field public scale:F

.field public scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput p1, p0, Lcom/ortiz/touch/TouchImageView$ZoomVariables;->scale:F

    .line 1305
    iput p2, p0, Lcom/ortiz/touch/TouchImageView$ZoomVariables;->focusX:F

    .line 1306
    iput p3, p0, Lcom/ortiz/touch/TouchImageView$ZoomVariables;->focusY:F

    .line 1307
    iput-object p4, p0, Lcom/ortiz/touch/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 1308
    return-void
.end method
