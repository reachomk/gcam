.class interface abstract Lcom/android/camera/location/LocationController;
.super Ljava/lang/Object;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/location/LocationController$OnConnectionFailedListener;
    }
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public abstract recordLocation(Z)V
.end method
