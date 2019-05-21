.class public final Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "AEMeteringRegion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;[",
        "Landroid/hardware/camera2/params/MeteringRectangle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/camera/async/Observable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->allAsList([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    check-cast p1, Ljava/util/List;

    .line 1027
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    .line 1028
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1029
    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/autofocus/MeteringParameters;->getAERegions(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    .line 17
    return-object v0
.end method
