.class public final Lcom/google/android/apps/lightcycle/math/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/math/Vector3;->set(FFF)V

    .line 17
    return-void
.end method


# virtual methods
.method public final set(FFF)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    .line 69
    iput p2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    .line 70
    iput p3, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    .line 71
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
