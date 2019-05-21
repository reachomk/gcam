.class public final Lcom/google/android/apps/lightcycle/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Lcom/google/android/apps/lightcycle/math/Quaternion;)V
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->x:D

    .line 43
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->y:D

    .line 44
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->z:D

    .line 45
    iget-wide v0, p1, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/math/Quaternion;->w:D

    .line 46
    return-void
.end method
