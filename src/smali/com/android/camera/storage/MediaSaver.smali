.class public interface abstract Lcom/android/camera/storage/MediaSaver;
.super Ljava/lang/Object;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;
    }
.end annotation


# virtual methods
.method public abstract addAnimation(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IILcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;II",
            "Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addImage(Ljava/io/InputStream;Ljava/lang/String;JLcom/google/common/base/Optional;IIILcom/google/common/base/Optional;Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;III",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;",
            ")V"
        }
    .end annotation
.end method
