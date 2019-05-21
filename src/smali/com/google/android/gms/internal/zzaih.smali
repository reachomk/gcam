.class public Lcom/google/android/gms/internal/zzaih;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzaig",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final afStateTransition:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final autoFlashHdrPlusDecision:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation
.end field

.field private final autoFlashState:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final captureState:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;"
        }
    .end annotation
.end field

.field private final faces:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;"
        }
    .end annotation
.end field

.field private final meteringData:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;"
        }
    .end annotation
.end field

.field private final readyState:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tag:I

.field private type:I

.field protected final zzcqp:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final zzcqq:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6031
    invoke-interface {p1}, Lcom/android/camera/one/v2/photo/PictureTaker;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaih;->readyState:Lcom/google/android/apps/camera/async/Observable;

    .line 6032
    iput-object p2, p0, Lcom/google/android/gms/internal/zzaih;->captureState:Lcom/google/android/apps/camera/async/Observable;

    .line 6033
    iput-object p3, p0, Lcom/google/android/gms/internal/zzaih;->afStateTransition:Lcom/google/android/apps/camera/async/Observable;

    .line 6034
    iput-object p4, p0, Lcom/google/android/gms/internal/zzaih;->autoFlashHdrPlusDecision:Lcom/google/android/apps/camera/async/Observable;

    .line 6035
    iput-object p5, p0, Lcom/google/android/gms/internal/zzaih;->faces:Lcom/google/android/apps/camera/async/Observable;

    .line 6036
    iput-object p6, p0, Lcom/google/android/gms/internal/zzaih;->meteringData:Lcom/google/android/apps/camera/async/Observable;

    .line 6037
    iput-object p7, p0, Lcom/google/android/gms/internal/zzaih;->autoFlashState:Lcom/google/android/apps/camera/async/Observable;

    .line 6038
    return-void
.end method


# virtual methods
.method public getAutoFlashHdrPlusDecision()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5057
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->autoFlashHdrPlusDecision:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public getAutoFlashState()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5072
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->autoFlashState:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public getAutoFocusStateTransition()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5052
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->afStateTransition:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public getCaptureState()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5047
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->captureState:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public getFaces()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5062
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->faces:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public getMeteringData()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5067
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->meteringData:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public getReadyState()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5042
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaih;->readyState:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method protected final zzap(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzaih;->tag:I

    .line 3000
    ushr-int/lit8 v0, v0, 0x3

    .line 0
    iget v1, p0, Lcom/google/android/gms/internal/zzaih;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzaih;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/zzain;

    .line 4000
    invoke-static {v0}, Lcom/google/android/gms/internal/zzaif;->zzti(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 5000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzain;->getSerializedSize()I

    move-result v1

    .line 4000
    add-int/2addr v0, v1

    .line 0
    :goto_0
    return v0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzain;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaif;->zzc(ILcom/google/android/gms/internal/zzain;)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzaif;)V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaih;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzaif;->zztj(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzaih;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzaih;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    :try_start_1
    check-cast p1, Lcom/google/android/gms/internal/zzain;

    iget v0, p0, Lcom/google/android/gms/internal/zzaih;->tag:I

    .line 1000
    ushr-int/lit8 v0, v0, 0x3

    .line 2000
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzain;->writeTo(Lcom/google/android/gms/internal/zzaif;)V

    .line 0
    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzaif;->zzV(II)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzain;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzaif;->zzc(Lcom/google/android/gms/internal/zzain;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
