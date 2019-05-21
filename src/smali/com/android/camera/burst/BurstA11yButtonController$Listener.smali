.class public interface abstract Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.super Ljava/lang/Object;
.source "BurstA11yButtonController.java"

# interfaces
.implements Lcom/android/camera/fsm/EventHandler;
.implements Lcom/android/camera/one/v2/OneCameraCreator;
.implements Lcom/bumptech/glide/manager/LifecycleListener;
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstA11yButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/fsm/EventHandler;",
        "Lcom/android/camera/one/v2/OneCameraCreator;",
        "Lcom/bumptech/glide/manager/LifecycleListener;",
        "Lcom/google/android/apps/camera/async/Updatable;"
    }
.end annotation


# virtual methods
.method public abstract onStop()V
.end method
