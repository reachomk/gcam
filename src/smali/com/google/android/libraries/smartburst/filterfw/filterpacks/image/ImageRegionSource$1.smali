.class Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource$1;
.super Ljava/lang/Object;
.source "ImageRegionSource.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameReceived(Lcom/google/android/libraries/smartburst/filterfw/InputPort;Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource;->access$000(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ImageRegionSource;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 66
    return-void
.end method
