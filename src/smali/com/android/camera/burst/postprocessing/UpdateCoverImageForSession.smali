.class final Lcom/android/camera/burst/postprocessing/UpdateCoverImageForSession;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "UpdateCoverImageForSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource;",
        ">;"
    }
.end annotation


# instance fields
.field private final captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;


# direct methods
.method public constructor <init>(Lcom/android/camera/session/StackableSession;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/UpdateCoverImageForSession;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;

    .line 1027
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/UpdateCoverImageForSession;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/StackableSession;->updateThumbnail(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V

    .line 1030
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/UpdateCoverImageForSession;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/camera/session/StackableSession;->updateCaptureIndicatorThumbnail(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;I)V

    .line 15
    return-void
.end method
