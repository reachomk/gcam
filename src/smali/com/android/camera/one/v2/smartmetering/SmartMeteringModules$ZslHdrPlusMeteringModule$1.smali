.class final Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule$1;
.super Ljava/lang/Object;
.source "SmartMeteringModules.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule;
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
        "Ljava/lang/Float;",
        "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 253
    check-cast p1, Ljava/lang/Float;

    .line 1257
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$MeteringData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$MeteringData;-><init>()V

    .line 1258
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$MeteringData;->simpleBrightness:F

    .line 253
    return-object v0
.end method
