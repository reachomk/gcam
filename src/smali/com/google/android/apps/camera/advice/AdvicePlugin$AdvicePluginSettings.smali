.class public interface abstract Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;
.super Ljava/lang/Object;
.source "AdvicePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/advice/AdvicePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdvicePluginSettings"
.end annotation


# virtual methods
.method public abstract getAdviceType()Lcom/google/android/apps/camera/advice/Advice$Type;
.end method

.method public abstract isActive()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
