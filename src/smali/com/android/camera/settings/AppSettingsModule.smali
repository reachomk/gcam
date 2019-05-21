.class public Lcom/android/camera/settings/AppSettingsModule;
.super Ljava/lang/Object;
.source "AppSettingsModule.java"

# interfaces
.implements Lcom/android/camera/memory/FeatureMemoryUsage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/memory/FeatureMemoryUsage;"
    }
.end annotation


# instance fields
.field private final additionalMemoryForNewShot:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final currentPeakMemory:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final currentPeakMemoryWithNewShot:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final feature:Lcom/android/camera/memory/Feature;


# direct methods
.method public constructor <init>(Lcom/android/camera/memory/Feature;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/memory/Feature;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p1, p0, Lcom/android/camera/settings/AppSettingsModule;->feature:Lcom/android/camera/memory/Feature;

    .line 1033
    invoke-static {p2}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/AppSettingsModule;->currentPeakMemory:Lcom/google/android/apps/camera/async/Observable;

    .line 1034
    invoke-static {p3}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/AppSettingsModule;->currentPeakMemoryWithNewShot:Lcom/google/android/apps/camera/async/Observable;

    .line 1035
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule;->currentPeakMemoryWithNewShot:Lcom/google/android/apps/camera/async/Observable;

    iget-object v1, p0, Lcom/android/camera/settings/AppSettingsModule;->currentPeakMemory:Lcom/google/android/apps/camera/async/Observable;

    .line 1036
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->subtract(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/AppSettingsModule;->additionalMemoryForNewShot:Lcom/google/android/apps/camera/async/Observable;

    .line 1037
    return-void
.end method


# virtual methods
.method public getAdditionalMemoryForShot()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule;->additionalMemoryForNewShot:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public getCurrentPeakMemory()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule;->currentPeakMemory:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public getFeature()Lcom/android/camera/memory/Feature;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule;->feature:Lcom/android/camera/memory/Feature;

    return-object v0
.end method
