.class public interface abstract Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$GestureDetectorFactory;
.super Ljava/lang/Object;
.source "ViewfinderGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureDetectorFactory"
.end annotation


# virtual methods
.method public abstract createGestureDetector(Landroid/view/GestureDetector$OnGestureListener;)Landroid/view/GestureDetector;
.end method

.method public abstract createScaleGestureDetector(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)Landroid/view/ScaleGestureDetector;
.end method
