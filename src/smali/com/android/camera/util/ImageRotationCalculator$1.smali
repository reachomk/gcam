.class final Lcom/android/camera/util/ImageRotationCalculator$1;
.super Ljava/lang/Object;
.source "ImageRotationCalculator.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/ImageRotationCalculator;->getObservable()Lcom/google/android/apps/camera/async/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/apps/camera/util/layout/Orientation;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/ImageRotationCalculator;


# direct methods
.method constructor <init>(Lcom/android/camera/util/ImageRotationCalculator;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/util/ImageRotationCalculator$1;->this$0:Lcom/android/camera/util/ImageRotationCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 1085
    iget-object v0, p0, Lcom/android/camera/util/ImageRotationCalculator$1;->this$0:Lcom/android/camera/util/ImageRotationCalculator;

    if-nez p1, :cond_0

    .line 1086
    sget-object p1, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 1085
    :cond_0
    invoke-static {v0, p1}, Lcom/android/camera/util/ImageRotationCalculator;->access$000(Lcom/android/camera/util/ImageRotationCalculator;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v0

    .line 1085
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    return-object v0
.end method
