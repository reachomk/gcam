.class public interface abstract Lcom/android/camera/module/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/ModuleManager$ModuleAgent;
    }
.end annotation


# virtual methods
.method public abstract getModuleAgent(I)Lcom/android/camera/module/ModuleManager$ModuleAgent;
.end method

.method public abstract getRegisteredModuleAgents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDefaultModuleIndex(I)Z
.end method
