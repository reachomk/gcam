.class final Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$1;
.super Ljava/lang/Object;
.source "AeAfActiveScanner.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->getConvergeFuture()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$Function2",
        "<",
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        "Ljava/lang/Long;",
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 61
    check-cast p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;

    check-cast p2, Ljava/lang/Long;

    .line 1065
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->afConvergeFrameNumber:J

    .line 61
    return-object p1
.end method
