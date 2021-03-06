.class public Lcom/android/server/display/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDaltonizerModeLock"
    .end annotation
.end field

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    .line 60
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    const/16 v2, 0x10

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 69
    return-void
.end method

.method private static applyColorMatrix([F)V
    .registers 8
    .param p0, "m"    # [F

    .prologue
    const/4 v5, 0x0

    .line 162
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 163
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_34

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 165
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    if-eqz p0, :cond_27

    .line 167
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    const/16 v4, 0x10

    if-ge v3, v4, :cond_2a

    .line 169
    aget v4, p0, v3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 172
    .end local v3    # "i":I
    :cond_27
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    :cond_2a
    const/16 v4, 0x3f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2e
    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_35
    .catchall {:try_start_2e .. :try_end_31} :catchall_43

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_34
    :goto_34
    return-void

    .line 176
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_35
    move-exception v1

    .line 177
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_36
    const-string/jumbo v4, "DisplayTransformManager"

    const-string/jumbo v5, "Failed to set color transform"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_43

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    .line 178
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_43
    move-exception v4

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v4
.end method

.method private static applyDaltonizerMode(I)V
    .registers 7
    .param p0, "mode"    # I

    .prologue
    .line 188
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 189
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_20

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1a
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_21
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2f

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_20
    :goto_20
    return-void

    .line 195
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_21
    move-exception v1

    .line 196
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_22
    const-string/jumbo v3, "DisplayTransformManager"

    const-string/jumbo v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_20

    .line 197
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v3

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw v3
.end method

.method private computeColorMatrixLocked()[F
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 121
    .local v6, "count":I
    if-nez v6, :cond_b

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_b
    iget-object v8, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 126
    .local v8, "result":[[F
    aget-object v0, v8, v1

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 127
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    if-ge v7, v6, :cond_2f

    .line 128
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 129
    .local v4, "rhs":[F
    add-int/lit8 v0, v7, 0x1

    rem-int/lit8 v0, v0, 0x2

    aget-object v0, v8, v0

    rem-int/lit8 v2, v7, 0x2

    aget-object v2, v8, v2

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 127
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 131
    .end local v4    # "rhs":[F
    :cond_2f
    rem-int/lit8 v0, v6, 0x2

    aget-object v0, v8, v0

    return-object v0
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .registers 6
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v2

    .line 77
    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_16

    .line 78
    .local v0, "value":[F
    if-nez v0, :cond_10

    :goto_e
    monitor-exit v2

    return-object v1

    :cond_10
    :try_start_10
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_16

    move-result-object v1

    goto :goto_e

    .line 76
    .end local v0    # "value":[F
    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDaltonizerMode()I
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 138
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setColorMatrix(I[F)V
    .registers 8
    .param p1, "level"    # I
    .param p2, "value"    # [F

    .prologue
    .line 93
    if-eqz p2, :cond_22

    array-length v1, p2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_22

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    array-length v3, p2

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_22
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v2

    .line 99
    :try_start_25
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 100
    .local v0, "oldValue":[F
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_41

    .line 101
    if-nez p2, :cond_43

    .line 102
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 110
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_50

    :cond_41
    monitor-exit v2

    .line 92
    return-void

    .line 103
    :cond_43
    if-nez v0, :cond_53

    .line 104
    :try_start_45
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_50

    goto :goto_3a

    .line 98
    .end local v0    # "oldValue":[F
    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1

    .line 106
    .restart local v0    # "oldValue":[F
    :cond_53
    :try_start_53
    array-length v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy([FI[FII)V
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_50

    goto :goto_3a
.end method

.method public setDaltonizerMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_3
    iget v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v0, p1, :cond_c

    .line 152
    iput p1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    .line 153
    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->applyDaltonizerMode(I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    .line 149
    return-void

    .line 150
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
